; ModuleID = 'fixed-value.c'
source_filename = "fixed-value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.real_value = type { i32, [3 x i64] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@mode_fbit = external local_unnamed_addr constant [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [68 x i8] c"large fixed-point constant implicitly truncated to fixed-point type\00", align 1
@mode_ibit = external local_unnamed_addr constant [87 x i8], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"fixed-value.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16

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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @fixed_identical(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !54 {
  %3 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !55
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %19, !prof !58

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !59
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %19, !prof !58

14:                                               ; preds = %8
  %15 = load i64, ptr %0, align 8, !tbaa !60
  %16 = load i64, ptr %1, align 8, !tbaa !60
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %8, %2
  %20 = phi i8 [ 0, %8 ], [ 0, %2 ], [ %18, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @fixed_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !61 {
  %2 = load i64, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !59
  %5 = xor i64 %4, %2
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @fixed_from_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !34 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !55
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !46
  %11 = zext i8 %10 to i32
  %12 = call i32 @real_from_string(ptr noundef nonnull %4, ptr noundef %1) #14
  %13 = load i32, ptr %7, align 8, !tbaa !55
  %14 = call fastcc i32 @check_real_for_fixed_mode(ptr noundef nonnull %4, i32 noundef %13), !range !62
  %15 = add nsw i32 %14, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = icmp eq i32 %14, 3
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load i32, ptr %7, align 8, !tbaa !55
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !46
  switch i8 %23, label %26 [
    i8 6, label %24
    i8 15, label %24
    i8 7, label %24
    i8 16, label %24
  ]

24:                                               ; preds = %19, %19, %19, %19, %3
  %25 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 151, ptr noundef nonnull @.str) #14
  br label %26

26:                                               ; preds = %19, %24, %17
  call void @real_2expN(ptr noundef nonnull %6, i32 noundef %11, i32 noundef %2) #14
  %27 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %5, i32 noundef 65, ptr noundef nonnull %4, ptr noundef nonnull %6) #14
  %28 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  call void @real_to_integer2(ptr noundef %0, ptr noundef nonnull %28, ptr noundef nonnull %5) #14
  %29 = icmp eq i32 %14, 3
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, ptr %7, align 8, !tbaa !55
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !46
  switch i8 %34, label %44 [
    i8 4, label %35
    i8 13, label %35
    i8 5, label %35
    i8 14, label %35
  ]

35:                                               ; preds = %30, %30, %30, %30
  %36 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %37 = load i8, ptr %36, align 1, !tbaa !46
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %32
  %40 = load i8, ptr %39, align 1, !tbaa !46
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, %38
  %43 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %42, i8 noundef zeroext 1) #14
  br label %70

44:                                               ; preds = %30, %26
  %45 = load i32, ptr %7, align 8, !tbaa !55
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !46
  switch i8 %48, label %49 [
    i8 4, label %52
    i8 13, label %52
    i8 6, label %52
  ]

49:                                               ; preds = %44
  %50 = icmp eq i8 %48, 15
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %44, %44, %44, %49
  %53 = phi i32 [ %51, %49 ], [ 1, %44 ], [ 1, %44 ], [ 1, %44 ]
  %54 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %46
  %55 = load i8, ptr %54, align 1, !tbaa !46
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %53, %56
  %58 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %46
  %59 = load i8, ptr %58, align 1, !tbaa !46
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %57, %60
  switch i8 %48, label %62 [
    i8 5, label %65
    i8 14, label %65
    i8 7, label %65
  ]

62:                                               ; preds = %52
  %63 = icmp eq i8 %48, 16
  %64 = zext i1 %63 to i8
  br label %65

65:                                               ; preds = %52, %52, %52, %62
  %66 = phi i8 [ %64, %62 ], [ 1, %52 ], [ 1, %52 ], [ 1, %52 ]
  %67 = load i64, ptr %0, align 8
  %68 = load i64, ptr %28, align 8
  %69 = call { i64, i64 } @double_int_ext(i64 %67, i64 %68, i32 noundef %61, i8 noundef zeroext %66) #14
  br label %70

70:                                               ; preds = %65, %35
  %71 = phi { i64, i64 } [ %69, %65 ], [ %43, %35 ]
  %72 = extractvalue { i64, i64 } %71, 0
  store i64 %72, ptr %0, align 8
  %73 = extractvalue { i64, i64 } %71, 1
  store i64 %73, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret void
}

declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @check_real_for_fixed_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #11 !prof !34 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !46
  %9 = zext i8 %8 to i32
  call void @real_2expN(ptr noundef nonnull %3, i32 noundef %9, i32 noundef %1) #14
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %6
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 0, %12
  call void @real_2expN(ptr noundef nonnull %5, i32 noundef %13, i32 noundef %1) #14
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %15 = load i8, ptr %14, align 1, !tbaa !46
  switch i8 %15, label %17 [
    i8 4, label %16
    i8 13, label %16
    i8 6, label %16
    i8 15, label %16
  ]

16:                                               ; preds = %2, %2, %2, %2
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %4, i32 noundef 79, ptr noundef nonnull %3, ptr noundef null) #14
  br label %19

17:                                               ; preds = %2
  %18 = call i32 @real_from_string(ptr noundef nonnull %4, ptr noundef nonnull @.str.3) #14
  br label %19

19:                                               ; preds = %17, %16
  %20 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef %0, ptr noundef nonnull %4) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %0, ptr noundef nonnull %3) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %27 = call zeroext i8 @real_compare(i32 noundef 99, ptr noundef %0, ptr noundef nonnull %3) #14
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 0, i32 2
  br label %30

30:                                               ; preds = %25, %22, %19
  %31 = phi i32 [ 1, %19 ], [ 3, %22 ], [ %29, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret i32 %31
}

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @real_2expN(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_ext(i64, i64, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local void @fixed_to_decimal(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #11 !prof !34 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  call void @real_2expN(ptr noundef nonnull %5, i32 noundef %12, i32 noundef %8) #14
  %13 = load i64, ptr %1, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = load i32, ptr %7, align 8, !tbaa !55
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !46
  switch i8 %19, label %20 [
    i8 5, label %23
    i8 14, label %23
    i8 7, label %23
  ]

20:                                               ; preds = %3
  %21 = icmp eq i8 %19, 16
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %3, %3, %3, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  call void @real_from_integer(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %13, i64 noundef %15, i32 noundef %24) #14
  %25 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 75, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  call void @real_to_decimal(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %2, i64 noundef 0, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret void
}

declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @fixed_arithmetic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #11 !prof !34 {
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  %8 = alloca %struct.double_int, align 8
  %9 = alloca %struct.double_int, align 8
  %10 = alloca %struct.double_int, align 8
  %11 = alloca %struct.double_int, align 8
  %12 = alloca %struct.double_int, align 8
  switch i32 %1, label %474 [
    i32 79, label %13
    i32 63, label %69
    i32 64, label %78
    i32 65, label %87
    i32 67, label %286
    i32 83, label %470
    i32 84, label %472
  ]

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !55
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  switch i8 %18, label %19 [
    i8 5, label %22
    i8 14, label %22
    i8 7, label %22
  ]

19:                                               ; preds = %13
  %20 = icmp eq i8 %18, 16
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %13, %13, %19, %13
  %23 = phi i8 [ %21, %19 ], [ 1, %13 ], [ 1, %13 ], [ 1, %13 ]
  %24 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %16
  %25 = load i8, ptr %24, align 1, !tbaa !46
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %16
  %28 = load i8, ptr %27, align 1, !tbaa !46
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, %26
  %31 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %15, ptr %31, align 8, !tbaa !55
  %32 = load i64, ptr %2, align 8
  %33 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = tail call { i64, i64 } @double_int_neg(i64 %32, i64 %34) #14
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  store i64 %36, ptr %0, align 8, !tbaa.struct !63
  %38 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %37, ptr %38, align 8, !tbaa.struct !65
  %39 = icmp eq i8 %23, 0
  %40 = xor i8 %23, 1
  %41 = zext nneg i8 %40 to i32
  %42 = add nuw nsw i32 %30, %41
  %43 = tail call { i64, i64 } @double_int_ext(i64 %36, i64 %37, i32 noundef %42, i8 noundef zeroext %23) #14
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  store i64 %44, ptr %0, align 8, !tbaa.struct !63
  store i64 %45, ptr %38, align 8, !tbaa.struct !65
  br i1 %39, label %53, label %46

46:                                               ; preds = %22
  %47 = icmp eq i64 %44, 0
  %48 = icmp eq i64 %45, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %475, label %50

50:                                               ; preds = %46
  %51 = icmp eq i8 %4, 0
  br i1 %51, label %475, label %52

52:                                               ; preds = %50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %475

53:                                               ; preds = %22
  %54 = icmp eq i64 %45, 0
  %55 = icmp eq i64 %44, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %475, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %33, align 8, !tbaa !59
  %59 = icmp eq i64 %45, %58
  br i1 %59, label %60, label %475

60:                                               ; preds = %57
  %61 = load i64, ptr %2, align 8, !tbaa !60
  %62 = icmp eq i64 %44, %61
  br i1 %62, label %63, label %475

63:                                               ; preds = %60
  %64 = icmp eq i8 %4, 0
  br i1 %64, label %475, label %65

65:                                               ; preds = %63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %66 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %30, i8 noundef zeroext 1) #14
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = extractvalue { i64, i64 } %66, 1
  store i64 %67, ptr %0, align 8, !tbaa.struct !63
  store i64 %68, ptr %38, align 8, !tbaa.struct !65
  br label %475

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !55
  %72 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !55
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 747, ptr noundef nonnull @.str.2) #14
  br label %76

76:                                               ; preds = %69, %75
  %77 = tail call fastcc zeroext i8 @do_fixed_add(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %4), !range !66
  br label %475

78:                                               ; preds = %5
  %79 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !55
  %81 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !55
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 752, ptr noundef nonnull @.str.2) #14
  br label %85

85:                                               ; preds = %78, %84
  %86 = tail call fastcc zeroext i8 @do_fixed_add(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %4), !range !66
  br label %475

87:                                               ; preds = %5
  %88 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !55
  %90 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !55
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 757, ptr noundef nonnull @.str.2) #14
  br label %94

94:                                               ; preds = %87, %93
  %95 = load i32, ptr %88, align 8, !tbaa !55
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !46
  switch i8 %98, label %99 [
    i8 5, label %102
    i8 14, label %102
    i8 7, label %102
  ]

99:                                               ; preds = %94
  %100 = icmp eq i8 %98, 16
  %101 = zext i1 %100 to i8
  br label %102

102:                                              ; preds = %94, %94, %99, %94
  %103 = phi i8 [ %101, %99 ], [ 1, %94 ], [ 1, %94 ], [ 1, %94 ]
  %104 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %96
  %105 = load i8, ptr %104, align 1, !tbaa !46
  %106 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %96
  %107 = load i8, ptr %106, align 1, !tbaa !46
  %108 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %95, ptr %108, align 8, !tbaa !55
  %109 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %96
  %110 = load i16, ptr %109, align 2, !tbaa !67
  %111 = icmp ult i16 %110, 65
  br i1 %111, label %112, label %135

112:                                              ; preds = %102
  %113 = load i64, ptr %2, align 8
  %114 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %115 = load i64, ptr %114, align 8
  %116 = load i64, ptr %3, align 8
  %117 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %118 = load i64, ptr %117, align 8
  %119 = tail call { i64, i64 } @double_int_mul(i64 %113, i64 %115, i64 %116, i64 %118) #14
  %120 = extractvalue { i64, i64 } %119, 0
  %121 = extractvalue { i64, i64 } %119, 1
  store i64 %120, ptr %0, align 8, !tbaa.struct !63
  %122 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %121, ptr %122, align 8, !tbaa.struct !65
  %123 = load i32, ptr %108, align 8, !tbaa !55
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !46
  %127 = zext i8 %126 to i64
  %128 = sub nsw i64 0, %127
  %129 = xor i8 %103, 1
  %130 = zext nneg i8 %129 to i32
  tail call void @lshift_double(i64 noundef %120, i64 noundef %121, i64 noundef %128, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %122, i32 noundef %130) #14
  %131 = load i32, ptr %108, align 8, !tbaa !55
  %132 = load i64, ptr %0, align 8
  %133 = load i64, ptr %122, align 8
  %134 = tail call fastcc zeroext i8 @fixed_saturate1(i32 noundef %131, i64 %132, i64 %133, ptr noundef nonnull %0, i8 noundef zeroext %4), !range !66
  br label %272

135:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  %136 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !59
  %138 = load i64, ptr %2, align 8, !tbaa !60
  %139 = getelementptr inbounds %struct.double_int, ptr %3, i64 0, i32 1
  %140 = load i64, ptr %139, align 8, !tbaa !59
  %141 = load i64, ptr %3, align 8, !tbaa !60
  %142 = tail call { i64, i64 } @double_int_mul(i64 %138, i64 0, i64 %141, i64 0) #14
  %143 = extractvalue { i64, i64 } %142, 0
  %144 = extractvalue { i64, i64 } %142, 1
  %145 = tail call { i64, i64 } @double_int_mul(i64 %138, i64 0, i64 %140, i64 0) #14
  %146 = extractvalue { i64, i64 } %145, 0
  %147 = extractvalue { i64, i64 } %145, 1
  %148 = tail call { i64, i64 } @double_int_mul(i64 %137, i64 0, i64 %141, i64 0) #14
  %149 = extractvalue { i64, i64 } %148, 0
  %150 = extractvalue { i64, i64 } %148, 1
  %151 = tail call { i64, i64 } @double_int_mul(i64 %137, i64 0, i64 %140, i64 0) #14
  %152 = extractvalue { i64, i64 } %151, 0
  %153 = extractvalue { i64, i64 } %151, 1
  %154 = tail call { i64, i64 } @double_int_add(i64 %143, i64 %144, i64 0, i64 %149) #14
  %155 = extractvalue { i64, i64 } %154, 0
  %156 = extractvalue { i64, i64 } %154, 1
  store i64 %155, ptr %12, align 8, !tbaa.struct !63
  %157 = getelementptr inbounds i8, ptr %12, i64 8
  store i64 %156, ptr %157, align 8, !tbaa.struct !65
  %158 = tail call i32 @double_int_cmp(i64 %155, i64 %156, i64 %143, i64 %144, i8 noundef zeroext 1) #14
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %165, label %160

160:                                              ; preds = %135
  %161 = load i64, ptr %12, align 8
  %162 = load i64, ptr %157, align 8
  %163 = tail call i32 @double_int_cmp(i64 %161, i64 %162, i64 0, i64 %149, i8 noundef zeroext 1) #14
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %166

165:                                              ; preds = %160, %135
  br label %166

166:                                              ; preds = %165, %160
  %167 = phi i32 [ 1, %165 ], [ 0, %160 ]
  %168 = load i64, ptr %157, align 8, !tbaa !68
  %169 = load i64, ptr %12, align 8, !tbaa !69
  %170 = tail call { i64, i64 } @double_int_add(i64 %169, i64 %168, i64 0, i64 %146) #14
  %171 = extractvalue { i64, i64 } %170, 0
  %172 = extractvalue { i64, i64 } %170, 1
  store i64 %171, ptr %12, align 8, !tbaa.struct !63
  store i64 %172, ptr %157, align 8, !tbaa.struct !65
  %173 = tail call i32 @double_int_cmp(i64 %171, i64 %172, i64 %169, i64 %168, i8 noundef zeroext 1) #14
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %180, label %175

175:                                              ; preds = %166
  %176 = load i64, ptr %12, align 8
  %177 = load i64, ptr %157, align 8
  %178 = tail call i32 @double_int_cmp(i64 %176, i64 %177, i64 0, i64 %146, i8 noundef zeroext 1) #14
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %182

180:                                              ; preds = %175, %166
  %181 = add nuw nsw i32 %167, 1
  br label %182

182:                                              ; preds = %180, %175
  %183 = phi i32 [ %181, %180 ], [ %167, %175 ]
  %184 = tail call { i64, i64 } @double_int_add(i64 %152, i64 %153, i64 %150, i64 0) #14
  %185 = extractvalue { i64, i64 } %184, 0
  %186 = extractvalue { i64, i64 } %184, 1
  store i64 %185, ptr %11, align 8, !tbaa.struct !63
  %187 = getelementptr inbounds i8, ptr %11, i64 8
  store i64 %186, ptr %187, align 8, !tbaa.struct !65
  %188 = tail call { i64, i64 } @double_int_add(i64 %185, i64 %186, i64 %147, i64 0) #14
  %189 = extractvalue { i64, i64 } %188, 0
  %190 = extractvalue { i64, i64 } %188, 1
  store i64 %189, ptr %11, align 8, !tbaa.struct !63
  store i64 %190, ptr %187, align 8, !tbaa.struct !65
  %191 = zext nneg i32 %183 to i64
  %192 = tail call { i64, i64 } @double_int_add(i64 %189, i64 %190, i64 %191, i64 0) #14
  %193 = extractvalue { i64, i64 } %192, 0
  %194 = extractvalue { i64, i64 } %192, 1
  store i64 %193, ptr %11, align 8, !tbaa.struct !63
  store i64 %194, ptr %187, align 8, !tbaa.struct !65
  %195 = icmp eq i8 %103, 0
  br i1 %195, label %196, label %224

196:                                              ; preds = %182
  %197 = load i64, ptr %136, align 8, !tbaa !59
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = load i64, ptr %3, align 8
  %201 = load i64, ptr %139, align 8
  %202 = tail call { i64, i64 } @double_int_neg(i64 %200, i64 %201) #14
  %203 = extractvalue { i64, i64 } %202, 0
  %204 = extractvalue { i64, i64 } %202, 1
  %205 = load i64, ptr %11, align 8
  %206 = load i64, ptr %187, align 8
  %207 = tail call { i64, i64 } @double_int_add(i64 %205, i64 %206, i64 %203, i64 %204) #14
  %208 = extractvalue { i64, i64 } %207, 0
  %209 = extractvalue { i64, i64 } %207, 1
  store i64 %208, ptr %11, align 8, !tbaa.struct !63
  store i64 %209, ptr %187, align 8, !tbaa.struct !65
  br label %210

210:                                              ; preds = %199, %196
  %211 = load i64, ptr %139, align 8, !tbaa !59
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %210
  %214 = load i64, ptr %2, align 8
  %215 = load i64, ptr %136, align 8
  %216 = tail call { i64, i64 } @double_int_neg(i64 %214, i64 %215) #14
  %217 = extractvalue { i64, i64 } %216, 0
  %218 = extractvalue { i64, i64 } %216, 1
  %219 = load i64, ptr %11, align 8
  %220 = load i64, ptr %187, align 8
  %221 = tail call { i64, i64 } @double_int_add(i64 %219, i64 %220, i64 %217, i64 %218) #14
  %222 = extractvalue { i64, i64 } %221, 0
  %223 = extractvalue { i64, i64 } %221, 1
  store i64 %222, ptr %11, align 8, !tbaa.struct !63
  store i64 %223, ptr %187, align 8, !tbaa.struct !65
  br label %224

224:                                              ; preds = %213, %210, %182
  %225 = load i32, ptr %108, align 8, !tbaa !55
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !46
  %229 = icmp eq i8 %228, -128
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i64, ptr %11, align 8, !tbaa !69
  store i64 %231, ptr %12, align 8, !tbaa !69
  %232 = load i64, ptr %187, align 8, !tbaa !68
  store i64 %232, ptr %157, align 8, !tbaa !68
  %233 = sext i1 %195 to i64
  store i64 %233, ptr %11, align 8, !tbaa !69
  store i64 %233, ptr %187, align 8, !tbaa !68
  store i64 %231, ptr %0, align 8, !tbaa !60
  %234 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  store i64 %232, ptr %234, align 8, !tbaa !59
  br label %265

235:                                              ; preds = %224
  %236 = zext i8 %228 to i64
  %237 = load i64, ptr %12, align 8, !tbaa !69
  %238 = load i64, ptr %157, align 8, !tbaa !68
  %239 = sub nsw i64 0, %236
  call void @lshift_double(i64 noundef %237, i64 noundef %238, i64 noundef %239, i32 noundef 128, ptr noundef nonnull %12, ptr noundef nonnull %157, i32 noundef 0) #14
  %240 = load i64, ptr %11, align 8, !tbaa !69
  %241 = load i64, ptr %187, align 8, !tbaa !68
  %242 = load i32, ptr %108, align 8, !tbaa !55
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !46
  %246 = zext i8 %245 to i64
  %247 = sub nsw i64 128, %246
  %248 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  call void @lshift_double(i64 noundef %240, i64 noundef %241, i64 noundef %247, i32 noundef 128, ptr noundef %0, ptr noundef nonnull %248, i32 noundef 0) #14
  %249 = load i64, ptr %0, align 8, !tbaa !60
  %250 = load i64, ptr %12, align 8, !tbaa !69
  %251 = or i64 %250, %249
  store i64 %251, ptr %0, align 8, !tbaa !60
  %252 = load i64, ptr %248, align 8, !tbaa !59
  %253 = load i64, ptr %157, align 8, !tbaa !68
  %254 = or i64 %253, %252
  store i64 %254, ptr %248, align 8, !tbaa !59
  store i64 %251, ptr %12, align 8, !tbaa !69
  store i64 %254, ptr %157, align 8, !tbaa !68
  %255 = load i64, ptr %11, align 8, !tbaa !69
  %256 = load i64, ptr %187, align 8, !tbaa !68
  %257 = load i32, ptr %108, align 8, !tbaa !55
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !46
  %261 = zext i8 %260 to i64
  %262 = sub nsw i64 0, %261
  %263 = xor i8 %103, 1
  %264 = zext nneg i8 %263 to i32
  call void @lshift_double(i64 noundef %255, i64 noundef %256, i64 noundef %262, i32 noundef 128, ptr noundef nonnull %11, ptr noundef nonnull %187, i32 noundef %264) #14
  br label %265

265:                                              ; preds = %235, %230
  %266 = load i32, ptr %108, align 8, !tbaa !55
  %267 = load i64, ptr %11, align 8
  %268 = load i64, ptr %187, align 8
  %269 = load i64, ptr %12, align 8
  %270 = load i64, ptr %157, align 8
  %271 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %266, i64 %267, i64 %268, i64 %269, i64 %270, ptr noundef %0, i8 noundef zeroext %4), !range !66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  br label %272

272:                                              ; preds = %112, %265
  %273 = phi i8 [ %134, %112 ], [ %271, %265 ]
  %274 = zext i8 %105 to i32
  %275 = zext i8 %107 to i32
  %276 = xor i8 %103, 1
  %277 = zext nneg i8 %276 to i32
  %278 = add nuw nsw i32 %277, %274
  %279 = add nuw nsw i32 %278, %275
  %280 = load i64, ptr %0, align 8
  %281 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %282 = load i64, ptr %281, align 8
  %283 = call { i64, i64 } @double_int_ext(i64 %280, i64 %282, i32 noundef %279, i8 noundef zeroext %103) #14
  %284 = extractvalue { i64, i64 } %283, 0
  %285 = extractvalue { i64, i64 } %283, 1
  store i64 %284, ptr %0, align 8, !tbaa.struct !63
  store i64 %285, ptr %281, align 8, !tbaa.struct !65
  br label %475

286:                                              ; preds = %5
  %287 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %288 = load i32, ptr %287, align 8, !tbaa !55
  %289 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !55
  %291 = icmp eq i32 %288, %290
  br i1 %291, label %293, label %292

292:                                              ; preds = %286
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 762, ptr noundef nonnull @.str.2) #14
  br label %293

293:                                              ; preds = %286, %292
  %294 = load i32, ptr %287, align 8, !tbaa !55
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !46
  switch i8 %297, label %298 [
    i8 5, label %301
    i8 14, label %301
    i8 7, label %301
  ]

298:                                              ; preds = %293
  %299 = icmp eq i8 %297, 16
  %300 = zext i1 %299 to i8
  br label %301

301:                                              ; preds = %293, %293, %298, %293
  %302 = phi i8 [ %300, %298 ], [ 1, %293 ], [ 1, %293 ], [ 1, %293 ]
  %303 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %295
  %304 = load i8, ptr %303, align 1, !tbaa !46
  %305 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %295
  %306 = load i8, ptr %305, align 1, !tbaa !46
  %307 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %294, ptr %307, align 8, !tbaa !55
  %308 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %295
  %309 = load i16, ptr %308, align 2, !tbaa !67
  %310 = icmp ult i16 %309, 65
  br i1 %310, label %311, label %329

311:                                              ; preds = %301
  %312 = load i64, ptr %2, align 8, !tbaa !60
  %313 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %314 = load i64, ptr %313, align 8, !tbaa !59
  %315 = zext i8 %306 to i64
  %316 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %317 = xor i8 %302, 1
  %318 = zext nneg i8 %317 to i32
  tail call void @lshift_double(i64 noundef %312, i64 noundef %314, i64 noundef %315, i32 noundef 128, ptr noundef %0, ptr noundef nonnull %316, i32 noundef %318) #14
  %319 = load i64, ptr %0, align 8
  %320 = load i64, ptr %316, align 8
  %321 = load i64, ptr %3, align 8
  %322 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %323 = load i64, ptr %322, align 8
  %324 = tail call { i64, i64 } @double_int_div(i64 %319, i64 %320, i64 %321, i64 %323, i8 noundef zeroext %302, i32 noundef 67) #14
  %325 = extractvalue { i64, i64 } %324, 0
  %326 = extractvalue { i64, i64 } %324, 1
  store i64 %325, ptr %0, align 8, !tbaa.struct !63
  store i64 %326, ptr %316, align 8, !tbaa.struct !65
  %327 = load i32, ptr %307, align 8, !tbaa !55
  %328 = tail call fastcc zeroext i8 @fixed_saturate1(i32 noundef %327, i64 %325, i64 %326, ptr noundef nonnull %0, i8 noundef zeroext %4), !range !66
  br label %456

329:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  %330 = icmp eq i8 %302, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %329
  %332 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %333 = load i64, ptr %332, align 8
  %334 = icmp slt i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %331
  %336 = load i64, ptr %2, align 8
  %337 = tail call { i64, i64 } @double_int_neg(i64 %336, i64 %333) #14
  %338 = extractvalue { i64, i64 } %337, 0
  %339 = extractvalue { i64, i64 } %337, 1
  br label %344

340:                                              ; preds = %331, %329
  %341 = load i64, ptr %2, align 8, !tbaa.struct !63
  %342 = getelementptr inbounds i8, ptr %2, i64 8
  %343 = load i64, ptr %342, align 8, !tbaa.struct !65
  br label %344

344:                                              ; preds = %340, %335
  %345 = phi i32 [ 0, %340 ], [ 1, %335 ]
  %346 = phi i64 [ %341, %340 ], [ %338, %335 ]
  %347 = phi i64 [ %343, %340 ], [ %339, %335 ]
  br i1 %330, label %348, label %358

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.double_int, ptr %3, i64 0, i32 1
  %350 = load i64, ptr %349, align 8
  %351 = icmp slt i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %348
  %353 = load i64, ptr %3, align 8
  %354 = tail call { i64, i64 } @double_int_neg(i64 %353, i64 %350) #14
  %355 = extractvalue { i64, i64 } %354, 0
  %356 = extractvalue { i64, i64 } %354, 1
  %357 = add nuw nsw i32 %345, 1
  br label %362

358:                                              ; preds = %348, %344
  %359 = load i64, ptr %3, align 8, !tbaa.struct !63
  %360 = getelementptr inbounds i8, ptr %3, i64 8
  %361 = load i64, ptr %360, align 8, !tbaa.struct !65
  br label %362

362:                                              ; preds = %358, %352
  %363 = phi i32 [ %345, %358 ], [ %357, %352 ]
  %364 = phi i64 [ %359, %358 ], [ %355, %352 ]
  %365 = phi i64 [ %361, %358 ], [ %356, %352 ]
  %366 = load i32, ptr %307, align 8, !tbaa !55
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !46
  %370 = icmp eq i8 %369, -128
  br i1 %370, label %371, label %373

371:                                              ; preds = %362
  store i64 %346, ptr %6, align 8, !tbaa.struct !63
  %372 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %347, ptr %372, align 8, !tbaa.struct !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %383

373:                                              ; preds = %362
  %374 = zext i8 %369 to i64
  %375 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  call void @lshift_double(i64 noundef %346, i64 noundef %347, i64 noundef %374, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %375, i32 noundef 0) #14
  %376 = load i32, ptr %307, align 8, !tbaa !55
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !46
  %380 = zext i8 %379 to i64
  %381 = add nsw i64 %380, -128
  %382 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  call void @lshift_double(i64 noundef %346, i64 noundef %347, i64 noundef %381, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %382, i32 noundef 0) #14
  br label %383

383:                                              ; preds = %373, %371
  %384 = load i64, ptr %6, align 8, !tbaa !69
  %385 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %386 = load i64, ptr %385, align 8, !tbaa !68
  %387 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  %388 = getelementptr inbounds %struct.double_int, ptr %10, i64 0, i32 1
  %389 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %384, i64 noundef %386, i64 noundef %364, i64 noundef %365, ptr noundef nonnull %8, ptr noundef nonnull %387, ptr noundef nonnull %10, ptr noundef nonnull %388) #14
  %390 = getelementptr inbounds %struct.double_int, ptr %9, i64 0, i32 1
  %391 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %392

392:                                              ; preds = %383, %421
  %393 = phi i32 [ 0, %383 ], [ %424, %421 ]
  %394 = load i64, ptr %388, align 8, !tbaa !68
  %395 = icmp slt i64 %394, 0
  %396 = load i64, ptr %10, align 8, !tbaa !69
  call void @lshift_double(i64 noundef %396, i64 noundef %394, i64 noundef 1, i32 noundef 128, ptr noundef nonnull %10, ptr noundef nonnull %388, i32 noundef 0) #14
  %397 = load i64, ptr %391, align 8, !tbaa !68
  %398 = icmp slt i64 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %392
  %400 = load i64, ptr %10, align 8, !tbaa !69
  %401 = add i64 %400, 1
  store i64 %401, ptr %10, align 8, !tbaa !69
  br label %402

402:                                              ; preds = %399, %392
  %403 = load i64, ptr %9, align 8, !tbaa !69
  %404 = load i64, ptr %390, align 8, !tbaa !68
  call void @lshift_double(i64 noundef %403, i64 noundef %404, i64 noundef 1, i32 noundef 128, ptr noundef nonnull %9, ptr noundef nonnull %390, i32 noundef 0) #14
  %405 = call { i64, i64 } @double_int_neg(i64 %364, i64 %365) #14
  %406 = extractvalue { i64, i64 } %405, 0
  %407 = extractvalue { i64, i64 } %405, 1
  %408 = load i64, ptr %10, align 8
  %409 = load i64, ptr %388, align 8
  %410 = call { i64, i64 } @double_int_add(i64 %408, i64 %409, i64 %406, i64 %407) #14
  %411 = extractvalue { i64, i64 } %410, 0
  %412 = extractvalue { i64, i64 } %410, 1
  br i1 %395, label %418, label %413

413:                                              ; preds = %402
  %414 = load i64, ptr %10, align 8
  %415 = load i64, ptr %388, align 8
  %416 = call i32 @double_int_cmp(i64 %414, i64 %415, i64 %364, i64 %365, i8 noundef zeroext 1) #14
  %417 = icmp eq i32 %416, -1
  br i1 %417, label %421, label %418

418:                                              ; preds = %413, %402
  %419 = load i64, ptr %9, align 8, !tbaa !69
  %420 = add i64 %419, 1
  store i64 %420, ptr %9, align 8, !tbaa !69
  store i64 %411, ptr %10, align 8, !tbaa.struct !63
  store i64 %412, ptr %388, align 8, !tbaa.struct !65
  br label %421

421:                                              ; preds = %418, %413
  %422 = load i64, ptr %7, align 8, !tbaa !69
  %423 = load i64, ptr %391, align 8, !tbaa !68
  call void @lshift_double(i64 noundef %422, i64 noundef %423, i64 noundef 1, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %391, i32 noundef 0) #14
  %424 = add nuw nsw i32 %393, 1
  %425 = icmp eq i32 %424, 128
  br i1 %425, label %426, label %392, !llvm.loop !70

426:                                              ; preds = %421
  %427 = icmp eq i32 %363, 1
  br i1 %427, label %428, label %449

428:                                              ; preds = %426
  %429 = load i64, ptr %9, align 8
  %430 = load i64, ptr %390, align 8
  %431 = call { i64, i64 } @double_int_neg(i64 %429, i64 %430) #14
  %432 = extractvalue { i64, i64 } %431, 0
  %433 = extractvalue { i64, i64 } %431, 1
  store i64 %432, ptr %9, align 8, !tbaa.struct !63
  store i64 %433, ptr %390, align 8, !tbaa.struct !65
  %434 = icmp eq i64 %433, 0
  %435 = icmp eq i64 %432, 0
  %436 = select i1 %434, i1 %435, i1 false
  %437 = load i64, ptr %8, align 8
  br i1 %436, label %438, label %443

438:                                              ; preds = %428
  %439 = load i64, ptr %387, align 8
  %440 = call { i64, i64 } @double_int_neg(i64 %437, i64 %439) #14
  %441 = extractvalue { i64, i64 } %440, 0
  %442 = extractvalue { i64, i64 } %440, 1
  store i64 %441, ptr %8, align 8, !tbaa.struct !63
  br label %447

443:                                              ; preds = %428
  %444 = xor i64 %437, -1
  store i64 %444, ptr %8, align 8, !tbaa !69
  %445 = load i64, ptr %387, align 8, !tbaa !68
  %446 = xor i64 %445, -1
  br label %447

447:                                              ; preds = %438, %443
  %448 = phi i64 [ %446, %443 ], [ %442, %438 ]
  store i64 %448, ptr %387, align 8
  br label %449

449:                                              ; preds = %447, %426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !63
  %450 = load i32, ptr %307, align 8, !tbaa !55
  %451 = load i64, ptr %8, align 8
  %452 = load i64, ptr %387, align 8
  %453 = load i64, ptr %9, align 8
  %454 = load i64, ptr %390, align 8
  %455 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %450, i64 %451, i64 %452, i64 %453, i64 %454, ptr noundef %0, i8 noundef zeroext %4), !range !66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %456

456:                                              ; preds = %311, %449
  %457 = phi i8 [ %328, %311 ], [ %455, %449 ]
  %458 = zext i8 %304 to i32
  %459 = zext i8 %306 to i32
  %460 = xor i8 %302, 1
  %461 = zext nneg i8 %460 to i32
  %462 = add nuw nsw i32 %461, %458
  %463 = add nuw nsw i32 %462, %459
  %464 = load i64, ptr %0, align 8
  %465 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %466 = load i64, ptr %465, align 8
  %467 = call { i64, i64 } @double_int_ext(i64 %464, i64 %466, i32 noundef %463, i8 noundef zeroext %302) #14
  %468 = extractvalue { i64, i64 } %467, 0
  %469 = extractvalue { i64, i64 } %467, 1
  store i64 %468, ptr %0, align 8, !tbaa.struct !63
  store i64 %469, ptr %465, align 8, !tbaa.struct !65
  br label %475

470:                                              ; preds = %5
  %471 = tail call fastcc zeroext i8 @do_fixed_shift(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %4), !range !66
  br label %475

472:                                              ; preds = %5
  %473 = tail call fastcc zeroext i8 @do_fixed_shift(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %4), !range !66
  br label %475

474:                                              ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 775, ptr noundef nonnull @.str.2) #14
  br label %475

475:                                              ; preds = %53, %65, %63, %60, %57, %52, %50, %46, %474, %472, %470, %456, %272, %85, %76
  %476 = phi i8 [ 0, %474 ], [ %473, %472 ], [ %471, %470 ], [ %457, %456 ], [ %273, %272 ], [ %86, %85 ], [ %77, %76 ], [ 0, %52 ], [ 0, %65 ], [ 0, %60 ], [ 0, %57 ], [ 0, %46 ], [ 1, %50 ], [ 1, %63 ], [ 0, %53 ]
  ret i8 %476
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @do_fixed_add(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #11 !prof !34 {
  %6 = icmp eq i8 %3, 0
  %7 = load i64, ptr %2, align 8
  br i1 %6, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = tail call { i64, i64 } @double_int_neg(i64 %7, i64 %10) #14
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !65
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %12, %8 ], [ %7, %14 ]
  %19 = phi i64 [ %13, %8 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !46
  switch i8 %24, label %25 [
    i8 5, label %28
    i8 14, label %28
    i8 7, label %28
  ]

25:                                               ; preds = %17
  %26 = icmp eq i8 %24, 16
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %17, %17, %17, %25
  %29 = phi i8 [ %27, %25 ], [ 1, %17 ], [ 1, %17 ], [ 1, %17 ]
  %30 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %22
  %31 = load i8, ptr %30, align 1, !tbaa !46
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %22
  %34 = load i8, ptr %33, align 1, !tbaa !46
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %21, ptr %37, align 8, !tbaa !55
  %38 = load i64, ptr %1, align 8
  %39 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = tail call { i64, i64 } @double_int_add(i64 %38, i64 %40, i64 %18, i64 %19) #14
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  store i64 %42, ptr %0, align 8, !tbaa.struct !63
  %44 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %43, ptr %44, align 8, !tbaa.struct !65
  %45 = icmp eq i8 %29, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %28
  br i1 %6, label %58, label %47

47:                                               ; preds = %46
  %48 = load i64, ptr %1, align 8
  %49 = load i64, ptr %39, align 8
  %50 = load i64, ptr %2, align 8
  %51 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %52 = load i64, ptr %51, align 8
  %53 = tail call i32 @double_int_cmp(i64 %48, i64 %49, i64 %50, i64 %52, i8 noundef zeroext 1) #14
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %137

55:                                               ; preds = %47
  %56 = icmp eq i8 %4, 0
  br i1 %56, label %137, label %57

57:                                               ; preds = %55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %137

58:                                               ; preds = %46
  %59 = tail call { i64, i64 } @double_int_ext(i64 %42, i64 %43, i32 noundef %36, i8 noundef zeroext 1) #14
  %60 = extractvalue { i64, i64 } %59, 0
  %61 = extractvalue { i64, i64 } %59, 1
  store i64 %60, ptr %0, align 8, !tbaa.struct !63
  store i64 %61, ptr %44, align 8, !tbaa.struct !65
  %62 = load i64, ptr %1, align 8
  %63 = load i64, ptr %39, align 8
  %64 = tail call i32 @double_int_cmp(i64 %60, i64 %61, i64 %62, i64 %63, i8 noundef zeroext 1) #14
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i64, ptr %0, align 8
  %68 = load i64, ptr %44, align 8
  %69 = load i64, ptr %2, align 8
  %70 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = tail call i32 @double_int_cmp(i64 %67, i64 %68, i64 %69, i64 %71, i8 noundef zeroext 1) #14
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %137

74:                                               ; preds = %66, %58
  %75 = icmp eq i8 %4, 0
  br i1 %75, label %137, label %76

76:                                               ; preds = %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  br label %137

77:                                               ; preds = %28
  %78 = load i64, ptr %1, align 8
  %79 = load i64, ptr %39, align 8
  %80 = icmp ult i32 %36, 64
  %81 = zext nneg i32 %36 to i64
  %82 = lshr i64 %78, %81
  %83 = add nsw i32 %36, -64
  %84 = zext nneg i32 %83 to i64
  %85 = lshr i64 %79, %84
  %86 = select i1 %80, i64 %82, i64 %85
  %87 = trunc i64 %86 to i32
  %88 = and i32 %87, 1
  %89 = load i64, ptr %2, align 8
  %90 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %91 = load i64, ptr %90, align 8
  %92 = lshr i64 %89, %81
  %93 = lshr i64 %91, %84
  %94 = select i1 %80, i64 %92, i64 %93
  %95 = trunc i64 %94 to i32
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %88, %96
  br i1 %6, label %98, label %106

98:                                               ; preds = %77
  br i1 %97, label %99, label %137

99:                                               ; preds = %98
  %100 = lshr i64 %42, %81
  %101 = lshr i64 %43, %84
  %102 = select i1 %80, i64 %100, i64 %101
  %103 = trunc i64 %102 to i32
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %88, %104
  br i1 %105, label %137, label %114

106:                                              ; preds = %77
  br i1 %97, label %137, label %107

107:                                              ; preds = %106
  %108 = lshr i64 %42, %81
  %109 = lshr i64 %43, %84
  %110 = select i1 %80, i64 %108, i64 %109
  %111 = trunc i64 %110 to i32
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %88, %112
  br i1 %113, label %137, label %114

114:                                              ; preds = %99, %107
  %115 = icmp eq i8 %4, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %114
  store i64 1, ptr %0, align 8, !tbaa !60
  store i64 0, ptr %44, align 8, !tbaa !59
  %117 = zext nneg i32 %36 to i64
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %117, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %44, i32 noundef 1) #14
  %118 = load i64, ptr %1, align 8
  %119 = load i64, ptr %39, align 8
  %120 = icmp ult i32 %36, 64
  %121 = lshr i64 %118, %117
  %122 = add nsw i32 %36, -64
  %123 = zext nneg i32 %122 to i64
  %124 = lshr i64 %119, %123
  %125 = select i1 %120, i64 %121, i64 %124
  %126 = and i64 %125, 1
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %116
  %129 = tail call { i64, i64 } @double_int_neg(i64 1, i64 0) #14
  %130 = extractvalue { i64, i64 } %129, 0
  %131 = extractvalue { i64, i64 } %129, 1
  %132 = load i64, ptr %0, align 8
  %133 = load i64, ptr %44, align 8
  %134 = tail call { i64, i64 } @double_int_add(i64 %132, i64 %133, i64 %130, i64 %131) #14
  %135 = extractvalue { i64, i64 } %134, 0
  %136 = extractvalue { i64, i64 } %134, 1
  store i64 %135, ptr %0, align 8, !tbaa.struct !63
  store i64 %136, ptr %44, align 8, !tbaa.struct !65
  br label %137

137:                                              ; preds = %114, %99, %98, %74, %55, %106, %107, %116, %128, %57, %47, %76, %66
  %138 = phi i8 [ 0, %57 ], [ 0, %47 ], [ 0, %76 ], [ 0, %66 ], [ 0, %128 ], [ 0, %116 ], [ 0, %107 ], [ 0, %106 ], [ 1, %55 ], [ 1, %74 ], [ 0, %98 ], [ 0, %99 ], [ 1, %114 ]
  %139 = xor i8 %29, 1
  %140 = zext nneg i8 %139 to i32
  %141 = add nuw nsw i32 %36, %140
  %142 = load i64, ptr %0, align 8
  %143 = load i64, ptr %44, align 8
  %144 = tail call { i64, i64 } @double_int_ext(i64 %142, i64 %143, i32 noundef %141, i8 noundef zeroext %29) #14
  %145 = extractvalue { i64, i64 } %144, 0
  %146 = extractvalue { i64, i64 } %144, 1
  store i64 %145, ptr %0, align 8, !tbaa.struct !63
  store i64 %146, ptr %44, align 8, !tbaa.struct !65
  ret i8 %138
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @do_fixed_shift(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #11 !prof !34 {
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  %8 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !46
  switch i8 %12, label %13 [
    i8 5, label %16
    i8 14, label %16
    i8 7, label %16
  ]

13:                                               ; preds = %5
  %14 = icmp eq i8 %12, 16
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %5, %5, %5, %13
  %17 = phi i8 [ %15, %13 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ]
  %18 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %10
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %10
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %9, ptr %24, align 8, !tbaa !55
  %25 = load i64, ptr %2, align 8, !tbaa !60
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !63
  br label %100

28:                                               ; preds = %16
  %29 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %10
  %30 = load i16, ptr %29, align 2, !tbaa !67
  %31 = icmp ugt i16 %30, 64
  %32 = icmp ne i8 %3, 0
  %33 = and i1 %32, %31
  br i1 %33, label %49, label %34

34:                                               ; preds = %28
  %35 = load i64, ptr %1, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !59
  %38 = icmp eq i8 %3, 0
  %39 = sub i64 0, %25
  %40 = select i1 %38, i64 %39, i64 %25
  %41 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %42 = xor i8 %17, 1
  %43 = zext nneg i8 %42 to i32
  tail call void @lshift_double(i64 noundef %35, i64 noundef %37, i64 noundef %40, i32 noundef 128, ptr noundef %0, ptr noundef nonnull %41, i32 noundef %43) #14
  br i1 %32, label %44, label %88

44:                                               ; preds = %34
  %45 = load i32, ptr %24, align 8, !tbaa !55
  %46 = load i64, ptr %0, align 8
  %47 = load i64, ptr %41, align 8
  %48 = tail call fastcc zeroext i8 @fixed_saturate1(i32 noundef %45, i64 %46, i64 %47, ptr noundef nonnull %0, i8 noundef zeroext %4), !range !66
  br label %88

49:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %50 = icmp eq i64 %25, 128
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %64

52:                                               ; preds = %49
  %53 = load i64, ptr %1, align 8, !tbaa !60
  %54 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %57 = xor i8 %17, 1
  %58 = zext nneg i8 %57 to i32
  call void @lshift_double(i64 noundef %53, i64 noundef %55, i64 noundef %25, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %56, i32 noundef %58) #14
  %59 = load i64, ptr %1, align 8, !tbaa !60
  %60 = load i64, ptr %54, align 8, !tbaa !59
  %61 = load i64, ptr %2, align 8, !tbaa !60
  %62 = add i64 %61, -128
  %63 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  call void @lshift_double(i64 noundef %59, i64 noundef %60, i64 noundef %62, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %63, i32 noundef 0) #14
  br label %64

64:                                               ; preds = %52, %51
  %65 = icmp eq i8 %17, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !59
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i64, ptr %2, align 8, !tbaa !60
  %72 = trunc i64 %71 to i32
  %73 = load i64, ptr %6, align 8
  %74 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = call { i64, i64 } @double_int_ext(i64 %73, i64 %75, i32 noundef %72, i8 noundef zeroext 0) #14
  %77 = extractvalue { i64, i64 } %76, 0
  %78 = extractvalue { i64, i64 } %76, 1
  store i64 %77, ptr %6, align 8, !tbaa.struct !63
  store i64 %78, ptr %74, align 8, !tbaa.struct !65
  br label %79

79:                                               ; preds = %70, %66, %64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !63
  %80 = load i32, ptr %24, align 8, !tbaa !55
  %81 = load i64, ptr %6, align 8
  %82 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %7, align 8
  %85 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %86 = load i64, ptr %85, align 8
  %87 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %80, i64 %81, i64 %83, i64 %84, i64 %86, ptr noundef %0, i8 noundef zeroext %4), !range !66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %88

88:                                               ; preds = %34, %44, %79
  %89 = phi i8 [ %87, %79 ], [ %48, %44 ], [ 0, %34 ]
  %90 = xor i8 %17, 1
  %91 = zext nneg i8 %90 to i32
  %92 = add nuw nsw i32 %91, %20
  %93 = add nuw nsw i32 %92, %23
  %94 = load i64, ptr %0, align 8
  %95 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %96 = load i64, ptr %95, align 8
  %97 = call { i64, i64 } @double_int_ext(i64 %94, i64 %96, i32 noundef %93, i8 noundef zeroext %17) #14
  %98 = extractvalue { i64, i64 } %97, 0
  %99 = extractvalue { i64, i64 } %97, 1
  store i64 %98, ptr %0, align 8, !tbaa.struct !63
  store i64 %99, ptr %95, align 8, !tbaa.struct !65
  br label %100

100:                                              ; preds = %88, %27
  %101 = phi i8 [ 0, %27 ], [ %89, %88 ]
  ret i8 %101
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @fixed_compare(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 !prof !34 {
  %4 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 788, ptr noundef nonnull @.str.2) #14
  br label %10

10:                                               ; preds = %3, %9
  switch i32 %0, label %103 [
    i32 102, label %11
    i32 101, label %21
    i32 97, label %31
    i32 98, label %49
    i32 99, label %67
    i32 100, label %85
  ]

11:                                               ; preds = %10
  %12 = load i64, ptr %1, align 8
  %13 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %2, align 8
  %16 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = icmp ne i64 %12, %15
  %19 = icmp ne i64 %14, %17
  %20 = select i1 %18, i1 true, i1 %19
  br label %104

21:                                               ; preds = %10
  %22 = load i64, ptr %1, align 8
  %23 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = load i64, ptr %2, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %22, %25
  %29 = icmp eq i64 %24, %27
  %30 = select i1 %28, i1 %29, i1 false
  br label %104

31:                                               ; preds = %10
  %32 = load i32, ptr %4, align 8, !tbaa !55
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !46
  switch i8 %35, label %36 [
    i8 5, label %39
    i8 14, label %39
    i8 7, label %39
  ]

36:                                               ; preds = %31
  %37 = icmp eq i8 %35, 16
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %31, %31, %31, %36
  %40 = phi i8 [ %38, %36 ], [ 1, %31 ], [ 1, %31 ], [ 1, %31 ]
  %41 = load i64, ptr %1, align 8
  %42 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = load i64, ptr %2, align 8
  %45 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = tail call i32 @double_int_cmp(i64 %41, i64 %43, i64 %44, i64 %46, i8 noundef zeroext %40) #14
  %48 = icmp eq i32 %47, -1
  br label %104

49:                                               ; preds = %10
  %50 = load i32, ptr %4, align 8, !tbaa !55
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !46
  switch i8 %53, label %54 [
    i8 5, label %57
    i8 14, label %57
    i8 7, label %57
  ]

54:                                               ; preds = %49
  %55 = icmp eq i8 %53, 16
  %56 = zext i1 %55 to i8
  br label %57

57:                                               ; preds = %49, %49, %49, %54
  %58 = phi i8 [ %56, %54 ], [ 1, %49 ], [ 1, %49 ], [ 1, %49 ]
  %59 = load i64, ptr %1, align 8
  %60 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = load i64, ptr %2, align 8
  %63 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = tail call i32 @double_int_cmp(i64 %59, i64 %61, i64 %62, i64 %64, i8 noundef zeroext %58) #14
  %66 = icmp ne i32 %65, 1
  br label %104

67:                                               ; preds = %10
  %68 = load i32, ptr %4, align 8, !tbaa !55
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !46
  switch i8 %71, label %72 [
    i8 5, label %75
    i8 14, label %75
    i8 7, label %75
  ]

72:                                               ; preds = %67
  %73 = icmp eq i8 %71, 16
  %74 = zext i1 %73 to i8
  br label %75

75:                                               ; preds = %67, %67, %67, %72
  %76 = phi i8 [ %74, %72 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ]
  %77 = load i64, ptr %1, align 8
  %78 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = load i64, ptr %2, align 8
  %81 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %82 = load i64, ptr %81, align 8
  %83 = tail call i32 @double_int_cmp(i64 %77, i64 %79, i64 %80, i64 %82, i8 noundef zeroext %76) #14
  %84 = icmp eq i32 %83, 1
  br label %104

85:                                               ; preds = %10
  %86 = load i32, ptr %4, align 8, !tbaa !55
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !46
  switch i8 %89, label %90 [
    i8 5, label %93
    i8 14, label %93
    i8 7, label %93
  ]

90:                                               ; preds = %85
  %91 = icmp eq i8 %89, 16
  %92 = zext i1 %91 to i8
  br label %93

93:                                               ; preds = %85, %85, %85, %90
  %94 = phi i8 [ %92, %90 ], [ 1, %85 ], [ 1, %85 ], [ 1, %85 ]
  %95 = load i64, ptr %1, align 8
  %96 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %97 = load i64, ptr %96, align 8
  %98 = load i64, ptr %2, align 8
  %99 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %100 = load i64, ptr %99, align 8
  %101 = tail call i32 @double_int_cmp(i64 %95, i64 %97, i64 %98, i64 %100, i8 noundef zeroext %94) #14
  %102 = icmp ne i32 %101, -1
  br label %104

103:                                              ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 815, ptr noundef nonnull @.str.2) #14
  br label %104

104:                                              ; preds = %103, %93, %75, %57, %39, %21, %11
  %105 = phi i1 [ false, %103 ], [ %102, %93 ], [ %84, %75 ], [ %66, %57 ], [ %48, %39 ], [ %30, %21 ], [ %20, %11 ]
  %106 = zext i1 %105 to i8
  ret i8 %106
}

declare i32 @double_int_cmp(i64, i64, i64, i64, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @fixed_convert(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #11 !prof !34 {
  %5 = alloca %struct.double_int, align 8
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  %8 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !71
  br label %212

12:                                               ; preds = %4
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !46
  %16 = zext i32 %9 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = icmp ugt i8 %15, %18
  br i1 %19, label %20, label %111

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %21 = zext i8 %15 to i32
  %22 = zext i8 %18 to i32
  %23 = sub nsw i32 %21, %22
  %24 = load i64, ptr %2, align 8, !tbaa !60
  %25 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !59
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %30 = load i8, ptr %29, align 1, !tbaa !46
  switch i8 %30, label %31 [
    i8 4, label %32
    i8 13, label %32
    i8 6, label %32
    i8 15, label %32
  ]

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %20, %20, %20, %20, %31
  %33 = phi i32 [ 0, %31 ], [ 1, %20 ], [ 1, %20 ], [ 1, %20 ], [ 1, %20 ]
  call void @lshift_double(i64 noundef %24, i64 noundef %26, i64 noundef %27, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %28, i32 noundef %33) #14
  %34 = load i64, ptr %2, align 8, !tbaa !60
  %35 = load i64, ptr %25, align 8, !tbaa !59
  %36 = add nsw i32 %23, -128
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  call void @lshift_double(i64 noundef %34, i64 noundef %35, i64 noundef %37, i32 noundef 128, ptr noundef nonnull %5, ptr noundef nonnull %38, i32 noundef 0) #14
  %39 = load i32, ptr %8, align 8, !tbaa !55
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !46
  switch i8 %42, label %52 [
    i8 4, label %43
    i8 13, label %43
    i8 6, label %43
    i8 15, label %43
  ]

43:                                               ; preds = %32, %32, %32, %32
  %44 = load i64, ptr %25, align 8, !tbaa !59
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, ptr %5, align 8
  %48 = load i64, ptr %38, align 8
  %49 = call { i64, i64 } @double_int_ext(i64 %47, i64 %48, i32 noundef %23, i8 noundef zeroext 0) #14
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = extractvalue { i64, i64 } %49, 1
  store i64 %50, ptr %5, align 8, !tbaa.struct !63
  store i64 %51, ptr %38, align 8, !tbaa.struct !65
  br label %52

52:                                               ; preds = %32, %46, %43
  %53 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %53, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !63
  %54 = load i32, ptr %8, align 8, !tbaa !55
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !46
  switch i8 %57, label %58 [
    i8 4, label %61
    i8 13, label %61
    i8 6, label %61
  ]

58:                                               ; preds = %52
  %59 = icmp eq i8 %57, 15
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %52, %52, %52, %58
  %62 = phi i32 [ %60, %58 ], [ 1, %52 ], [ 1, %52 ], [ 1, %52 ]
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %64 = load i8, ptr %63, align 1, !tbaa !46
  switch i8 %64, label %65 [
    i8 4, label %68
    i8 13, label %68
    i8 6, label %68
  ]

65:                                               ; preds = %61
  %66 = icmp eq i8 %64, 15
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %61, %61, %61, %65
  %69 = phi i32 [ %67, %65 ], [ 1, %61 ], [ 1, %61 ], [ 1, %61 ]
  %70 = icmp eq i32 %62, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i64, ptr %5, align 8
  %73 = load i64, ptr %38, align 8
  %74 = load i64, ptr %6, align 8
  %75 = load i64, ptr %28, align 8
  %76 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %72, i64 %73, i64 %74, i64 %75, ptr noundef %0, i8 noundef zeroext %3), !range !66
  br label %109

77:                                               ; preds = %68
  switch i8 %57, label %90 [
    i8 4, label %78
    i8 13, label %78
    i8 6, label %78
    i8 15, label %78
  ]

78:                                               ; preds = %77, %77, %77, %77
  %79 = load i64, ptr %25, align 8, !tbaa !59
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = icmp eq i8 %3, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %109

84:                                               ; preds = %78
  %85 = load i64, ptr %5, align 8
  %86 = load i64, ptr %38, align 8
  %87 = load i64, ptr %6, align 8
  %88 = load i64, ptr %28, align 8
  %89 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %85, i64 %86, i64 %87, i64 %88, ptr noundef %0, i8 noundef zeroext %3), !range !66
  br label %109

90:                                               ; preds = %77
  %91 = load i64, ptr %38, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = icmp eq i8 %3, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %97 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %98 = load i8, ptr %97, align 1, !tbaa !46
  %99 = zext i8 %98 to i32
  %100 = add nuw nsw i32 %99, %21
  %101 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %100, i8 noundef zeroext 1) #14
  %102 = extractvalue { i64, i64 } %101, 0
  %103 = extractvalue { i64, i64 } %101, 1
  store i64 %102, ptr %0, align 8, !tbaa.struct !63
  store i64 %103, ptr %96, align 8, !tbaa.struct !65
  br label %109

104:                                              ; preds = %90
  %105 = load i64, ptr %5, align 8
  %106 = load i64, ptr %6, align 8
  %107 = load i64, ptr %28, align 8
  %108 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %105, i64 %91, i64 %106, i64 %107, ptr noundef %0, i8 noundef zeroext %3), !range !66
  br label %109

109:                                              ; preds = %93, %81, %83, %84, %95, %104, %71
  %110 = phi i8 [ %76, %71 ], [ 0, %83 ], [ %89, %84 ], [ 0, %95 ], [ %108, %104 ], [ 1, %81 ], [ 1, %93 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %181

111:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %112 = load i64, ptr %2, align 8, !tbaa !60
  %113 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !59
  %115 = zext i8 %15 to i64
  %116 = zext i8 %18 to i64
  %117 = sub nsw i64 %115, %116
  %118 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %119 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %120 = load i8, ptr %119, align 1, !tbaa !46
  switch i8 %120, label %121 [
    i8 4, label %122
    i8 13, label %122
    i8 6, label %122
    i8 15, label %122
  ]

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %111, %111, %111, %111, %121
  %123 = phi i32 [ 0, %121 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ]
  call void @lshift_double(i64 noundef %112, i64 noundef %114, i64 noundef %117, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %118, i32 noundef %123) #14
  %124 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %124, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !63
  %125 = load i32, ptr %8, align 8, !tbaa !55
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !46
  switch i8 %128, label %129 [
    i8 4, label %132
    i8 13, label %132
    i8 6, label %132
  ]

129:                                              ; preds = %122
  %130 = icmp eq i8 %128, 15
  %131 = zext i1 %130 to i32
  br label %132

132:                                              ; preds = %122, %122, %122, %129
  %133 = phi i32 [ %131, %129 ], [ 1, %122 ], [ 1, %122 ], [ 1, %122 ]
  %134 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %135 = load i8, ptr %134, align 1, !tbaa !46
  switch i8 %135, label %136 [
    i8 4, label %139
    i8 13, label %139
    i8 6, label %139
  ]

136:                                              ; preds = %132
  %137 = icmp eq i8 %135, 15
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %132, %132, %132, %136
  %140 = phi i32 [ %138, %136 ], [ 1, %132 ], [ 1, %132 ], [ 1, %132 ]
  %141 = icmp eq i32 %133, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i64, ptr %0, align 8
  %144 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %145 = load i64, ptr %144, align 8
  %146 = call fastcc zeroext i8 @fixed_saturate1(i32 noundef %1, i64 %143, i64 %145, ptr noundef nonnull %0, i8 noundef zeroext %3), !range !66
  br label %179

147:                                              ; preds = %139
  switch i8 %128, label %159 [
    i8 4, label %148
    i8 13, label %148
    i8 6, label %148
    i8 15, label %148
  ]

148:                                              ; preds = %147, %147, %147, %147
  %149 = load i64, ptr %113, align 8, !tbaa !59
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = icmp eq i8 %3, 0
  br i1 %152, label %179, label %153

153:                                              ; preds = %151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %179

154:                                              ; preds = %148
  %155 = load i64, ptr %0, align 8
  %156 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %157 = load i64, ptr %156, align 8
  %158 = call fastcc zeroext i8 @fixed_saturate1(i32 noundef %1, i64 %155, i64 %157, ptr noundef nonnull %0, i8 noundef zeroext %3), !range !66
  br label %179

159:                                              ; preds = %147
  %160 = load i64, ptr %118, align 8, !tbaa !68
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = icmp eq i8 %3, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %166 = zext i8 %15 to i32
  %167 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %168 = load i8, ptr %167, align 1, !tbaa !46
  %169 = zext i8 %168 to i32
  %170 = add nuw nsw i32 %169, %166
  %171 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %170, i8 noundef zeroext 1) #14
  %172 = extractvalue { i64, i64 } %171, 0
  %173 = extractvalue { i64, i64 } %171, 1
  store i64 %172, ptr %0, align 8, !tbaa.struct !63
  store i64 %173, ptr %165, align 8, !tbaa.struct !65
  br label %179

174:                                              ; preds = %159
  %175 = load i64, ptr %0, align 8
  %176 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %177 = load i64, ptr %176, align 8
  %178 = call fastcc zeroext i8 @fixed_saturate1(i32 noundef %1, i64 %175, i64 %177, ptr noundef nonnull %0, i8 noundef zeroext %3), !range !66
  br label %179

179:                                              ; preds = %162, %151, %153, %154, %164, %174, %142
  %180 = phi i8 [ %146, %142 ], [ 0, %153 ], [ %158, %154 ], [ 0, %164 ], [ %178, %174 ], [ 1, %151 ], [ 1, %162 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %181

181:                                              ; preds = %179, %109
  %182 = phi i8 [ %110, %109 ], [ %180, %179 ]
  %183 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !55
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !46
  switch i8 %187, label %188 [
    i8 4, label %191
    i8 13, label %191
    i8 6, label %191
  ]

188:                                              ; preds = %181
  %189 = icmp eq i8 %187, 15
  %190 = zext i1 %189 to i32
  br label %191

191:                                              ; preds = %181, %181, %181, %188
  %192 = phi i32 [ %190, %188 ], [ 1, %181 ], [ 1, %181 ], [ 1, %181 ]
  %193 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %185
  %194 = load i8, ptr %193, align 1, !tbaa !46
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %192, %195
  %197 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %185
  %198 = load i8, ptr %197, align 1, !tbaa !46
  %199 = zext i8 %198 to i32
  %200 = add nuw nsw i32 %196, %199
  switch i8 %187, label %201 [
    i8 5, label %204
    i8 14, label %204
    i8 7, label %204
  ]

201:                                              ; preds = %191
  %202 = icmp eq i8 %187, 16
  %203 = zext i1 %202 to i8
  br label %204

204:                                              ; preds = %191, %191, %191, %201
  %205 = phi i8 [ %203, %201 ], [ 1, %191 ], [ 1, %191 ], [ 1, %191 ]
  %206 = load i64, ptr %0, align 8
  %207 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %208 = load i64, ptr %207, align 8
  %209 = call { i64, i64 } @double_int_ext(i64 %206, i64 %208, i32 noundef %200, i8 noundef zeroext %205) #14
  %210 = extractvalue { i64, i64 } %209, 0
  %211 = extractvalue { i64, i64 } %209, 1
  store i64 %210, ptr %0, align 8, !tbaa.struct !63
  store i64 %211, ptr %207, align 8, !tbaa.struct !65
  br label %212

212:                                              ; preds = %204, %11
  %213 = phi i8 [ 0, %11 ], [ %182, %204 ]
  ret i8 %213
}

declare void @lshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @fixed_saturate2(i32 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nocapture noundef writeonly %5, i8 noundef zeroext %6) unnamed_addr #11 !prof !34 {
  %8 = alloca %struct.double_int, align 8
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = icmp ugt i8 %11, 16
  %13 = zext nneg i8 %11 to i17
  %14 = lshr i17 48991, %13
  %15 = and i17 %14, 1
  %16 = icmp ne i17 %15, 0
  %17 = select i1 %12, i1 true, i1 %16
  %18 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %9
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = zext i8 %22 to i32
  %24 = add nuw nsw i32 %23, %20
  br i1 %17, label %42, label %25

25:                                               ; preds = %7
  %26 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %24, i8 noundef zeroext 1) #14
  %27 = extractvalue { i64, i64 } %26, 0
  %28 = extractvalue { i64, i64 } %26, 1
  %29 = tail call i32 @double_int_cmp(i64 %1, i64 %2, i64 0, i64 0, i8 noundef zeroext 1) #14
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = icmp ne i64 %1, 0
  %33 = icmp ne i64 %2, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %84, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @double_int_cmp(i64 %3, i64 %4, i64 %27, i64 %28, i8 noundef zeroext 1) #14
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %84

38:                                               ; preds = %35, %25
  %39 = icmp eq i8 %6, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %38
  store i64 %27, ptr %5, align 8, !tbaa.struct !63
  %41 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %28, ptr %41, align 8, !tbaa.struct !65
  br label %84

42:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  %43 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %24, i8 noundef zeroext 1) #14
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  %46 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  store i64 0, ptr %46, align 8, !tbaa !68
  store i64 1, ptr %8, align 8, !tbaa !69
  %47 = zext nneg i32 %24 to i64
  call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %47, i32 noundef 128, ptr noundef nonnull %8, ptr noundef nonnull %46, i32 noundef 1) #14
  %48 = add nuw nsw i32 %24, 1
  %49 = load i64, ptr %8, align 8
  %50 = load i64, ptr %46, align 8
  %51 = call { i64, i64 } @double_int_ext(i64 %49, i64 %50, i32 noundef %48, i8 noundef zeroext 0) #14
  %52 = extractvalue { i64, i64 } %51, 0
  %53 = extractvalue { i64, i64 } %51, 1
  store i64 %52, ptr %8, align 8, !tbaa.struct !63
  store i64 %53, ptr %46, align 8, !tbaa.struct !65
  %54 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 0, i64 0, i8 noundef zeroext 0) #14
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %63, label %56

56:                                               ; preds = %42
  %57 = icmp ne i64 %1, 0
  %58 = icmp ne i64 %2, 0
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = call i32 @double_int_cmp(i64 %3, i64 %4, i64 %44, i64 %45, i8 noundef zeroext 1) #14
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %42
  %64 = icmp eq i8 %6, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %63
  store i64 %44, ptr %5, align 8, !tbaa.struct !63
  %66 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %45, ptr %66, align 8, !tbaa.struct !65
  br label %82

67:                                               ; preds = %60, %56
  %68 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 -1, i64 -1, i8 noundef zeroext 0) #14
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = icmp ne i64 %1, -1
  %72 = icmp ne i64 %2, -1
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i64, ptr %8, align 8
  %76 = load i64, ptr %46, align 8
  %77 = call i32 @double_int_cmp(i64 %3, i64 %4, i64 %75, i64 %76, i8 noundef zeroext 1) #14
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %67
  %80 = icmp eq i8 %6, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !63
  br label %82

82:                                               ; preds = %79, %63, %70, %74, %81, %65
  %83 = phi i8 [ 0, %65 ], [ 0, %81 ], [ 0, %74 ], [ 0, %70 ], [ 1, %63 ], [ 1, %79 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %84

84:                                               ; preds = %35, %31, %40, %38, %82
  %85 = phi i8 [ %83, %82 ], [ 0, %40 ], [ 0, %31 ], [ 1, %38 ], [ 0, %35 ]
  ret i8 %85
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @fixed_saturate1(i32 noundef %0, i64 %1, i64 %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) unnamed_addr #11 !prof !34 {
  %6 = alloca %struct.double_int, align 8
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !46
  %10 = icmp ugt i8 %9, 16
  %11 = zext nneg i8 %9 to i17
  %12 = lshr i17 48991, %11
  %13 = and i17 %12, 1
  %14 = icmp ne i17 %13, 0
  %15 = select i1 %10, i1 true, i1 %14
  %16 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %7
  %17 = load i8, ptr %16, align 1, !tbaa !46
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %7
  %20 = load i8, ptr %19, align 1, !tbaa !46
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, %18
  br i1 %15, label %33, label %23

23:                                               ; preds = %5
  %24 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %22, i8 noundef zeroext 1) #14
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  %27 = tail call i32 @double_int_cmp(i64 %1, i64 %2, i64 %25, i64 %26, i8 noundef zeroext 1) #14
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = icmp eq i8 %4, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %29
  store i64 %25, ptr %3, align 8, !tbaa.struct !63
  %32 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %26, ptr %32, align 8, !tbaa.struct !65
  br label %61

33:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %34 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %22, i8 noundef zeroext 1) #14
  %35 = extractvalue { i64, i64 } %34, 0
  %36 = extractvalue { i64, i64 } %34, 1
  %37 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !68
  store i64 1, ptr %6, align 8, !tbaa !69
  %38 = zext nneg i32 %22 to i64
  call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %38, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %37, i32 noundef 1) #14
  %39 = add nuw nsw i32 %22, 1
  %40 = load i64, ptr %6, align 8
  %41 = load i64, ptr %37, align 8
  %42 = call { i64, i64 } @double_int_ext(i64 %40, i64 %41, i32 noundef %39, i8 noundef zeroext 0) #14
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  store i64 %43, ptr %6, align 8, !tbaa.struct !63
  store i64 %44, ptr %37, align 8, !tbaa.struct !65
  %45 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 %35, i64 %36, i8 noundef zeroext 0) #14
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = icmp eq i8 %4, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %47
  store i64 %35, ptr %3, align 8, !tbaa.struct !63
  %50 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %36, ptr %50, align 8, !tbaa.struct !65
  br label %59

51:                                               ; preds = %33
  %52 = load i64, ptr %6, align 8
  %53 = load i64, ptr %37, align 8
  %54 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 %52, i64 %53, i8 noundef zeroext 0) #14
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = icmp eq i8 %4, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !63
  br label %59

59:                                               ; preds = %56, %47, %51, %58, %49
  %60 = phi i8 [ 0, %49 ], [ 0, %58 ], [ 0, %51 ], [ 1, %47 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %61

61:                                               ; preds = %23, %31, %29, %59
  %62 = phi i8 [ %60, %59 ], [ 0, %31 ], [ 0, %23 ], [ 1, %29 ]
  ret i8 %62
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @fixed_convert_from_int(ptr nocapture noundef %0, i32 noundef %1, i64 %2, i64 %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #11 !prof !34 {
  %7 = alloca %struct.double_int, align 8
  %8 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, -128
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  store i64 %2, ptr %7, align 8, !tbaa.struct !63
  %15 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 %3, ptr %15, align 8, !tbaa.struct !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %22

16:                                               ; preds = %6
  %17 = zext i8 %11 to i64
  %18 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  call void @lshift_double(i64 noundef %2, i64 noundef %3, i64 noundef %17, i32 noundef 128, ptr noundef nonnull %8, ptr noundef nonnull %18, i32 noundef 0) #14
  %19 = add nsw i32 %12, -128
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  call void @lshift_double(i64 noundef %2, i64 noundef %3, i64 noundef %20, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %21, i32 noundef 0) #14
  br label %22

22:                                               ; preds = %16, %14
  %23 = icmp eq i8 %4, 0
  %24 = icmp slt i64 %3, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = call { i64, i64 } @double_int_ext(i64 %27, i64 %29, i32 noundef %12, i8 noundef zeroext 0) #14
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  store i64 %31, ptr %7, align 8, !tbaa.struct !63
  store i64 %32, ptr %28, align 8, !tbaa.struct !65
  br label %33

33:                                               ; preds = %26, %22
  %34 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %34, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !63
  %35 = zext i8 %4 to i32
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %37 = load i8, ptr %36, align 1, !tbaa !46
  switch i8 %37, label %38 [
    i8 5, label %41
    i8 14, label %41
    i8 7, label %41
  ]

38:                                               ; preds = %33
  %39 = icmp eq i8 %37, 16
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %33, %33, %33, %38
  %42 = phi i32 [ %40, %38 ], [ 1, %33 ], [ 1, %33 ], [ 1, %33 ]
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i64, ptr %7, align 8
  %46 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = load i64, ptr %8, align 8
  %49 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %45, i64 %47, i64 %48, i64 %50, ptr noundef %0, i8 noundef zeroext %5), !range !66
  br label %86

52:                                               ; preds = %41
  br i1 %23, label %53, label %65

53:                                               ; preds = %52
  br i1 %24, label %54, label %57

54:                                               ; preds = %53
  %55 = icmp eq i8 %5, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %86

57:                                               ; preds = %53
  %58 = load i64, ptr %7, align 8
  %59 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %8, align 8
  %62 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %58, i64 %60, i64 %61, i64 %63, ptr noundef %0, i8 noundef zeroext %5), !range !66
  br label %86

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = icmp eq i8 %5, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %73 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %74 = load i8, ptr %73, align 1, !tbaa !46
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %75, %12
  %77 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %76, i8 noundef zeroext 1) #14
  %78 = extractvalue { i64, i64 } %77, 0
  %79 = extractvalue { i64, i64 } %77, 1
  store i64 %78, ptr %0, align 8, !tbaa.struct !63
  store i64 %79, ptr %72, align 8, !tbaa.struct !65
  br label %86

80:                                               ; preds = %65
  %81 = load i64, ptr %7, align 8
  %82 = load i64, ptr %8, align 8
  %83 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %84 = load i64, ptr %83, align 8
  %85 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %81, i64 %67, i64 %82, i64 %84, ptr noundef %0, i8 noundef zeroext %5), !range !66
  br label %86

86:                                               ; preds = %69, %54, %56, %57, %71, %80, %44
  %87 = phi i8 [ %51, %44 ], [ 0, %71 ], [ %85, %80 ], [ 0, %56 ], [ %64, %57 ], [ 1, %54 ], [ 1, %69 ]
  %88 = load i32, ptr %34, align 8, !tbaa !55
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !46
  switch i8 %91, label %92 [
    i8 4, label %95
    i8 13, label %95
    i8 6, label %95
  ]

92:                                               ; preds = %86
  %93 = icmp eq i8 %91, 15
  %94 = zext i1 %93 to i32
  br label %95

95:                                               ; preds = %86, %86, %86, %92
  %96 = phi i32 [ %94, %92 ], [ 1, %86 ], [ 1, %86 ], [ 1, %86 ]
  %97 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %89
  %98 = load i8, ptr %97, align 1, !tbaa !46
  %99 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %89
  %100 = load i8, ptr %99, align 1, !tbaa !46
  switch i8 %91, label %101 [
    i8 5, label %104
    i8 14, label %104
    i8 7, label %104
  ]

101:                                              ; preds = %95
  %102 = icmp eq i8 %91, 16
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %95, %95, %95, %101
  %105 = phi i8 [ %103, %101 ], [ 1, %95 ], [ 1, %95 ], [ 1, %95 ]
  %106 = zext i8 %98 to i32
  %107 = add nuw nsw i32 %96, %106
  %108 = zext i8 %100 to i32
  %109 = add nuw nsw i32 %107, %108
  %110 = load i64, ptr %0, align 8
  %111 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %112 = load i64, ptr %111, align 8
  %113 = call { i64, i64 } @double_int_ext(i64 %110, i64 %112, i32 noundef %109, i8 noundef zeroext %105) #14
  %114 = extractvalue { i64, i64 } %113, 0
  %115 = extractvalue { i64, i64 } %113, 1
  store i64 %114, ptr %0, align 8, !tbaa.struct !63
  store i64 %115, ptr %111, align 8, !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret i8 %87
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @fixed_convert_from_real(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #11 !prof !34 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !46
  switch i8 %10, label %11 [
    i8 5, label %14
    i8 14, label %14
    i8 7, label %14
  ]

11:                                               ; preds = %4
  %12 = icmp eq i8 %10, 16
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %4, %4, %4, %11
  %15 = phi i8 [ %13, %11 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ]
  %16 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !46
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %8
  %20 = load i8, ptr %19, align 1, !tbaa !46
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !72
  %23 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %23, align 8, !tbaa !55
  call void @real_2expN(ptr noundef nonnull %7, i32 noundef %21, i32 noundef %1) #14
  %24 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 65, ptr noundef nonnull %5, ptr noundef nonnull %7) #14
  %25 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  call void @real_to_integer2(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %6) #14
  %26 = call fastcc i32 @check_real_for_fixed_mode(ptr noundef nonnull %5, i32 noundef %1), !range !62
  switch i32 %26, label %40 [
    i32 1, label %27
    i32 0, label %46
  ]

27:                                               ; preds = %14
  %28 = icmp eq i8 %3, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %27
  %30 = icmp eq i8 %15, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %46

32:                                               ; preds = %29
  store i64 1, ptr %0, align 8, !tbaa !60
  store i64 0, ptr %25, align 8, !tbaa !59
  %33 = zext nneg i32 %22 to i64
  call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %33, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %25, i32 noundef 1) #14
  %34 = add nuw nsw i32 %22, 1
  %35 = load i64, ptr %0, align 8
  %36 = load i64, ptr %25, align 8
  %37 = call { i64, i64 } @double_int_ext(i64 %35, i64 %36, i32 noundef %34, i8 noundef zeroext 0) #14
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  store i64 %38, ptr %0, align 8, !tbaa.struct !63
  store i64 %39, ptr %25, align 8, !tbaa.struct !65
  br label %46

40:                                               ; preds = %14
  %41 = icmp eq i8 %3, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %43 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %22, i8 noundef zeroext 1) #14
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  store i64 %44, ptr %0, align 8, !tbaa.struct !63
  store i64 %45, ptr %25, align 8, !tbaa.struct !65
  br label %46

46:                                               ; preds = %40, %14, %27, %42, %32, %31
  %47 = phi i8 [ 0, %31 ], [ 0, %32 ], [ 0, %42 ], [ 1, %27 ], [ 0, %14 ], [ 1, %40 ]
  %48 = xor i8 %15, 1
  %49 = zext nneg i8 %48 to i32
  %50 = add nuw nsw i32 %22, %49
  %51 = load i64, ptr %0, align 8
  %52 = load i64, ptr %25, align 8
  %53 = call { i64, i64 } @double_int_ext(i64 %51, i64 %52, i32 noundef %50, i8 noundef zeroext %15) #14
  %54 = extractvalue { i64, i64 } %53, 0
  %55 = extractvalue { i64, i64 } %53, 1
  store i64 %54, ptr %0, align 8, !tbaa.struct !63
  store i64 %55, ptr %25, align 8, !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  ret i8 %47
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_convert_from_fixed(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 !prof !34 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  call void @real_2expN(ptr noundef nonnull %4, i32 noundef %12, i32 noundef %8) #14
  %13 = load i64, ptr %2, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = load i32, ptr %7, align 8, !tbaa !55
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !46
  switch i8 %19, label %20 [
    i8 5, label %23
    i8 14, label %23
    i8 7, label %23
  ]

20:                                               ; preds = %3
  %21 = icmp eq i8 %19, 16
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %3, %3, %3, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  call void @real_from_integer(ptr noundef nonnull %5, i32 noundef 0, i64 noundef %13, i64 noundef %15, i32 noundef %24) #14
  %25 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 75, ptr noundef nonnull %5, ptr noundef nonnull %4) #14
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret void
}

declare void @real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @fixed_isneg(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !46
  switch i8 %6, label %27 [
    i8 4, label %7
    i8 13, label %7
    i8 6, label %7
    i8 15, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %4
  %9 = load i8, ptr %8, align 1, !tbaa !46
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %4
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, %10
  %15 = load i64, ptr %0, align 8
  %16 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = icmp ult i32 %14, 64
  %19 = zext nneg i32 %14 to i64
  %20 = lshr i64 %15, %19
  %21 = add nsw i32 %14, -64
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %17, %22
  %24 = select i1 %18, i64 %20, i64 %23
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1, %7
  br label %28

28:                                               ; preds = %7, %27
  %29 = phi i8 [ 1, %7 ], [ 0, %27 ]
  ret i8 %29
}

declare void @real_arithmetic2(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_div(i64, i64, i64, i64, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!54 = !{!"function_entry_count", i64 2}
!55 = !{!56, !41, i64 16}
!56 = !{!"fixed_value", !57, i64 0, !41, i64 16}
!57 = !{!"", !42, i64 0, !42, i64 8}
!58 = !{!"branch_weights", i32 2, i32 0}
!59 = !{!56, !42, i64 8}
!60 = !{!56, !42, i64 0}
!61 = !{!"function_entry_count", i64 26}
!62 = !{i32 0, i32 4}
!63 = !{i64 0, i64 8, !64, i64 8, i64 8, !64}
!64 = !{!42, !42, i64 0}
!65 = !{i64 0, i64 8, !64}
!66 = !{i8 0, i8 2}
!67 = !{!43, !43, i64 0}
!68 = !{!57, !42, i64 8}
!69 = !{!57, !42, i64 0}
!70 = distinct !{!70, !52, !53}
!71 = !{i64 0, i64 8, !64, i64 8, i64 8, !64, i64 16, i64 4, !50}
!72 = !{i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 8, i64 24, !46}
