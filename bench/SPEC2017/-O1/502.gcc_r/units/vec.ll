; ModuleID = 'vec.c'
source_filename = "vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.vec_prefix = type { i32, i32, [1 x ptr] }
%struct.VEC_void_p_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stack_vecs = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"vec.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !45 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !46
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !45 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !45 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !62

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vec_gc_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !65 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %5, label %4, !prof !66

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7, !prof !67

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = load i32, ptr %0, align 8, !tbaa !70
  br label %13

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %32, label %13, !prof !71

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %9, %7 ], [ 0, %11 ]
  %15 = phi i32 [ %10, %7 ], [ 0, %11 ]
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %19, label %18, !prof !72

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %19

19:                                               ; preds = %18, %13
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %28, label %21, !prof !73

21:                                               ; preds = %19
  %22 = icmp ult i32 %14, 16
  br i1 %22, label %23, label %25, !prof !74

23:                                               ; preds = %21
  %24 = shl nuw nsw i32 %14, 1
  br label %28

25:                                               ; preds = %21
  %26 = mul i32 %14, 3
  %27 = lshr i32 %26, 1
  br label %28

28:                                               ; preds = %25, %23, %19
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ], [ 4, %19 ]
  %30 = add i32 %15, %1
  %31 = tail call i32 @llvm.umax.i32(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %11
  %33 = phi i32 [ 0, %11 ], [ %31, %28 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37, !prof !75

35:                                               ; preds = %32
  br i1 %6, label %44, label %36, !prof !76

36:                                               ; preds = %35
  tail call void @ggc_free(ptr noundef nonnull %0) #15
  br label %44

37:                                               ; preds = %32
  %38 = zext i32 %33 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = add nuw nsw i64 %39, 8
  %41 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %40) #15
  %42 = getelementptr inbounds %struct.vec_prefix, ptr %41, i64 0, i32 1
  store i32 %33, ptr %42, align 4, !tbaa !68
  br i1 %6, label %43, label %44, !prof !77

43:                                               ; preds = %37
  store i32 0, ptr %41, align 8, !tbaa !70
  br label %44

44:                                               ; preds = %35, %36, %37, %43
  %45 = phi ptr [ null, %36 ], [ null, %35 ], [ %41, %43 ], [ %41, %37 ]
  ret ptr %45
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #8 !prof !45 !PGOFuncName !78 {
  %6 = icmp sgt i32 %1, -1
  br i1 %6, label %8, label %7, !prof !66

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %14, label %10, !prof !67

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !68
  %13 = load i32, ptr %0, align 8, !tbaa !70
  br label %16

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %39, label %16, !prof !71

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %12, %10 ], [ 0, %14 ]
  %18 = phi i32 [ %13, %10 ], [ 0, %14 ]
  %19 = sub i32 %17, %18
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %22, label %21, !prof !72

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %22

22:                                               ; preds = %21, %16
  %23 = icmp eq i8 %4, 0
  br i1 %23, label %26, label %24, !prof !79

24:                                               ; preds = %22
  %25 = add i32 %18, %1
  br label %39

26:                                               ; preds = %22
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %35, label %28, !prof !73

28:                                               ; preds = %26
  %29 = icmp ult i32 %17, 16
  br i1 %29, label %30, label %32, !prof !74

30:                                               ; preds = %28
  %31 = shl nuw nsw i32 %17, 1
  br label %35

32:                                               ; preds = %28
  %33 = mul i32 %17, 3
  %34 = lshr i32 %33, 1
  br label %35

35:                                               ; preds = %32, %30, %26
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ], [ 4, %26 ]
  %37 = add i32 %18, %1
  %38 = tail call i32 @llvm.umax.i32(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %14, %24, %35
  %40 = phi i32 [ 0, %14 ], [ %25, %24 ], [ %38, %35 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44, !prof !75

42:                                               ; preds = %39
  br i1 %9, label %51, label %43, !prof !76

43:                                               ; preds = %42
  tail call void @ggc_free(ptr noundef nonnull %0) #15
  br label %51

44:                                               ; preds = %39
  %45 = zext i32 %40 to i64
  %46 = mul i64 %45, %3
  %47 = add i64 %46, %2
  %48 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %47) #15
  %49 = getelementptr inbounds %struct.vec_prefix, ptr %48, i64 0, i32 1
  store i32 %40, ptr %49, align 4, !tbaa !68
  br i1 %9, label %50, label %51, !prof !77

50:                                               ; preds = %44
  store i32 0, ptr %48, align 8, !tbaa !70
  br label %51

51:                                               ; preds = %44, %50, %42, %43
  %52 = phi ptr [ null, %43 ], [ null, %42 ], [ %48, %50 ], [ %48, %44 ]
  ret ptr %52
}

; Function Attrs: nounwind uwtable
define dso_local ptr @vec_gc_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !80 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %5, label %4, !prof !66

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7, !prof !67

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = load i32, ptr %0, align 8, !tbaa !70
  br label %13

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %21, label %13, !prof !71

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %9, %7 ], [ 0, %11 ]
  %15 = phi i32 [ %10, %7 ], [ 0, %11 ]
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %19, label %18, !prof !72

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %19

19:                                               ; preds = %18, %13
  %20 = add i32 %15, %1
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26, !prof !75

24:                                               ; preds = %21
  br i1 %6, label %33, label %25, !prof !76

25:                                               ; preds = %24
  tail call void @ggc_free(ptr noundef nonnull %0) #15
  br label %33

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = add nuw nsw i64 %28, 8
  %30 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %29) #15
  %31 = getelementptr inbounds %struct.vec_prefix, ptr %30, i64 0, i32 1
  store i32 %22, ptr %31, align 4, !tbaa !68
  br i1 %6, label %32, label %33, !prof !77

32:                                               ; preds = %26
  store i32 0, ptr %30, align 8, !tbaa !70
  br label %33

33:                                               ; preds = %24, %25, %26, %32
  %34 = phi ptr [ null, %25 ], [ null, %24 ], [ %30, %32 ], [ %30, %26 ]
  ret ptr %34
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vec_gc_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 !prof !45 {
  %5 = tail call fastcc ptr @vec_gc_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @vec_gc_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #9 !prof !81 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %7, label %6, !prof !66

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9, !prof !67

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = load i32, ptr %0, align 8, !tbaa !70
  br label %15

13:                                               ; preds = %7
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %23, label %15, !prof !71

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %11, %9 ], [ 0, %13 ]
  %17 = phi i32 [ %12, %9 ], [ 0, %13 ]
  %18 = sub i32 %16, %17
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %21, label %20, !prof !72

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %20, %15
  %22 = add i32 %17, %1
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28, !prof !75

26:                                               ; preds = %23
  br i1 %8, label %35, label %27, !prof !76

27:                                               ; preds = %26
  tail call void @ggc_free(ptr noundef nonnull %0) #15
  br label %35

28:                                               ; preds = %23
  %29 = zext i32 %24 to i64
  %30 = mul i64 %29, %3
  %31 = add i64 %30, %2
  %32 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %31) #15
  %33 = getelementptr inbounds %struct.vec_prefix, ptr %32, i64 0, i32 1
  store i32 %24, ptr %33, align 4, !tbaa !68
  br i1 %8, label %34, label %35, !prof !77

34:                                               ; preds = %28
  store i32 0, ptr %32, align 8, !tbaa !70
  br label %35

35:                                               ; preds = %26, %27, %28, %34
  %36 = phi ptr [ null, %27 ], [ null, %26 ], [ %32, %34 ], [ %32, %28 ]
  ret ptr %36
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vec_heap_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !82 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %5, label %4, !prof !83

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7, !prof !84

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = load i32, ptr %0, align 8, !tbaa !70
  br label %13

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %32, label %13, !prof !85

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %9, %7 ], [ 0, %11 ]
  %15 = phi i32 [ %10, %7 ], [ 0, %11 ]
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %19, label %18, !prof !86

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %19

19:                                               ; preds = %18, %13
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %28, label %21, !prof !87

21:                                               ; preds = %19
  %22 = icmp ult i32 %14, 16
  br i1 %22, label %23, label %25, !prof !88

23:                                               ; preds = %21
  %24 = shl nuw nsw i32 %14, 1
  br label %28

25:                                               ; preds = %21
  %26 = mul i32 %14, 3
  %27 = lshr i32 %26, 1
  br label %28

28:                                               ; preds = %25, %23, %19
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ], [ 4, %19 ]
  %30 = add i32 %15, %1
  %31 = tail call i32 @llvm.umax.i32(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %11
  %33 = phi i32 [ 0, %11 ], [ %31, %28 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37, !prof !89

35:                                               ; preds = %32
  br i1 %6, label %44, label %36, !prof !90

36:                                               ; preds = %35
  tail call void @free(ptr noundef %0)
  br label %44

37:                                               ; preds = %32
  %38 = zext i32 %33 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = add nuw nsw i64 %39, 8
  %41 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %40) #15
  %42 = getelementptr inbounds %struct.vec_prefix, ptr %41, i64 0, i32 1
  store i32 %33, ptr %42, align 4, !tbaa !68
  br i1 %6, label %43, label %44, !prof !91

43:                                               ; preds = %37
  store i32 0, ptr %41, align 8, !tbaa !70
  br label %44

44:                                               ; preds = %35, %36, %37, %43
  %45 = phi ptr [ null, %36 ], [ null, %35 ], [ %41, %43 ], [ %41, %37 ]
  ret ptr %45
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #8 !prof !92 !PGOFuncName !93 {
  %6 = icmp sgt i32 %1, -1
  br i1 %6, label %8, label %7, !prof !83

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %14, label %10, !prof !84

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !68
  %13 = load i32, ptr %0, align 8, !tbaa !70
  br label %16

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %39, label %16, !prof !85

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %12, %10 ], [ 0, %14 ]
  %18 = phi i32 [ %13, %10 ], [ 0, %14 ]
  %19 = sub i32 %17, %18
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %22, label %21, !prof !86

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %22

22:                                               ; preds = %21, %16
  %23 = icmp eq i8 %4, 0
  br i1 %23, label %26, label %24, !prof !94

24:                                               ; preds = %22
  %25 = add i32 %18, %1
  br label %39

26:                                               ; preds = %22
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %35, label %28, !prof !87

28:                                               ; preds = %26
  %29 = icmp ult i32 %17, 16
  br i1 %29, label %30, label %32, !prof !88

30:                                               ; preds = %28
  %31 = shl nuw nsw i32 %17, 1
  br label %35

32:                                               ; preds = %28
  %33 = mul i32 %17, 3
  %34 = lshr i32 %33, 1
  br label %35

35:                                               ; preds = %32, %30, %26
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ], [ 4, %26 ]
  %37 = add i32 %18, %1
  %38 = tail call i32 @llvm.umax.i32(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %14, %24, %35
  %40 = phi i32 [ 0, %14 ], [ %25, %24 ], [ %38, %35 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44, !prof !89

42:                                               ; preds = %39
  br i1 %9, label %51, label %43, !prof !90

43:                                               ; preds = %42
  tail call void @free(ptr noundef %0)
  br label %51

44:                                               ; preds = %39
  %45 = zext i32 %40 to i64
  %46 = mul i64 %45, %3
  %47 = add i64 %46, %2
  %48 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %47) #15
  %49 = getelementptr inbounds %struct.vec_prefix, ptr %48, i64 0, i32 1
  store i32 %40, ptr %49, align 4, !tbaa !68
  br i1 %9, label %50, label %51, !prof !91

50:                                               ; preds = %44
  store i32 0, ptr %48, align 8, !tbaa !70
  br label %51

51:                                               ; preds = %44, %50, %42, %43
  %52 = phi ptr [ null, %43 ], [ null, %42 ], [ %48, %50 ], [ %48, %44 ]
  ret ptr %52
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vec_heap_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !95 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %5, label %4, !prof !83

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7, !prof !84

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = load i32, ptr %0, align 8, !tbaa !70
  br label %13

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %21, label %13, !prof !85

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %9, %7 ], [ 0, %11 ]
  %15 = phi i32 [ %10, %7 ], [ 0, %11 ]
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %19, label %18, !prof !86

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %19

19:                                               ; preds = %18, %13
  %20 = add i32 %15, %1
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26, !prof !89

24:                                               ; preds = %21
  br i1 %6, label %33, label %25, !prof !90

25:                                               ; preds = %24
  tail call void @free(ptr noundef %0)
  br label %33

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = add nuw nsw i64 %28, 8
  %30 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %29) #15
  %31 = getelementptr inbounds %struct.vec_prefix, ptr %30, i64 0, i32 1
  store i32 %22, ptr %31, align 4, !tbaa !68
  br i1 %6, label %32, label %33, !prof !91

32:                                               ; preds = %26
  store i32 0, ptr %30, align 8, !tbaa !70
  br label %33

33:                                               ; preds = %24, %25, %26, %32
  %34 = phi ptr [ null, %25 ], [ null, %24 ], [ %30, %32 ], [ %30, %26 ]
  ret ptr %34
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vec_heap_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 !prof !96 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %7, label %6, !prof !83

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9, !prof !84

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = load i32, ptr %0, align 8, !tbaa !70
  br label %15

13:                                               ; preds = %7
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %34, label %15, !prof !85

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %11, %9 ], [ 0, %13 ]
  %17 = phi i32 [ %12, %9 ], [ 0, %13 ]
  %18 = sub i32 %16, %17
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %21, label %20, !prof !86

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %20, %15
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %30, label %23, !prof !87

23:                                               ; preds = %21
  %24 = icmp ult i32 %16, 16
  br i1 %24, label %25, label %27, !prof !88

25:                                               ; preds = %23
  %26 = shl nuw nsw i32 %16, 1
  br label %30

27:                                               ; preds = %23
  %28 = mul i32 %16, 3
  %29 = lshr i32 %28, 1
  br label %30

30:                                               ; preds = %27, %25, %21
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ], [ 4, %21 ]
  %32 = add i32 %17, %1
  %33 = tail call i32 @llvm.umax.i32(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %13
  %35 = phi i32 [ 0, %13 ], [ %33, %30 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39, !prof !89

37:                                               ; preds = %34
  br i1 %8, label %46, label %38, !prof !90

38:                                               ; preds = %37
  tail call void @free(ptr noundef %0)
  br label %46

39:                                               ; preds = %34
  %40 = zext i32 %35 to i64
  %41 = mul i64 %40, %3
  %42 = add i64 %41, %2
  %43 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %42) #15
  %44 = getelementptr inbounds %struct.vec_prefix, ptr %43, i64 0, i32 1
  store i32 %35, ptr %44, align 4, !tbaa !68
  br i1 %8, label %45, label %46, !prof !91

45:                                               ; preds = %39
  store i32 0, ptr %43, align 8, !tbaa !70
  br label %46

46:                                               ; preds = %37, %38, %39, %45
  %47 = phi ptr [ null, %38 ], [ null, %37 ], [ %43, %45 ], [ %43, %39 ]
  ret ptr %47
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vec_heap_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 !prof !97 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %7, label %6, !prof !83

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 182, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9, !prof !84

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = load i32, ptr %0, align 8, !tbaa !70
  br label %15

13:                                               ; preds = %7
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %23, label %15, !prof !85

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %11, %9 ], [ 0, %13 ]
  %17 = phi i32 [ %12, %9 ], [ 0, %13 ]
  %18 = sub i32 %16, %17
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %21, label %20, !prof !86

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %20, %15
  %22 = add i32 %17, %1
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28, !prof !89

26:                                               ; preds = %23
  br i1 %8, label %35, label %27, !prof !90

27:                                               ; preds = %26
  tail call void @free(ptr noundef %0)
  br label %35

28:                                               ; preds = %23
  %29 = zext i32 %24 to i64
  %30 = mul i64 %29, %3
  %31 = add i64 %30, %2
  %32 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %31) #15
  %33 = getelementptr inbounds %struct.vec_prefix, ptr %32, i64 0, i32 1
  store i32 %24, ptr %33, align 4, !tbaa !68
  br i1 %8, label %34, label %35, !prof !91

34:                                               ; preds = %28
  store i32 0, ptr %32, align 8, !tbaa !70
  br label %35

35:                                               ; preds = %26, %27, %28, %34
  %36 = phi ptr [ null, %27 ], [ null, %26 ], [ %32, %34 ], [ %32, %28 ]
  ret ptr %36
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @vec_stack_p_reserve_exact_1(i32 noundef %0, ptr noundef returned %1) local_unnamed_addr #8 !prof !98 {
  %3 = load ptr, ptr @stack_vecs, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !99

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.VEC_void_p_base, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = load i32, ptr %3, align 8, !tbaa !102
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12, !prof !103

10:                                               ; preds = %2, %5
  %11 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %3, i32 noundef 1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0)
  store ptr %11, ptr @stack_vecs, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr @stack_vecs, align 8, !tbaa !46
  %14 = load i32, ptr %13, align 8, !tbaa !102
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !102
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.VEC_void_p_base, ptr %13, i64 0, i32 2, i64 %16
  store ptr %1, ptr %17, align 8, !tbaa !46
  store i32 0, ptr %1, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.vec_prefix, ptr %1, i64 0, i32 1
  store i32 %0, ptr %18, align 4, !tbaa !68
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vec_stack_p_reserve(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !45 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 0)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #10 !prof !45 {
  %6 = load ptr, ptr @stack_vecs, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 8, !tbaa !102
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %5, %8
  %12 = phi i64 [ 0, %5 ], [ %10, %8 ]
  br label %13

13:                                               ; preds = %11, %16
  %14 = phi i64 [ %18, %16 ], [ %12, %11 ]
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = add nsw i64 %14, -1
  %18 = add nsw i64 %14, -1
  %19 = getelementptr inbounds %struct.VEC_void_p_base, ptr %6, i64 0, i32 2, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %13, !llvm.loop !104

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.VEC_void_p_base, ptr %6, i64 0, i32 2, i64 %17
  %24 = load i32, ptr %6, align 8, !tbaa !102
  %25 = add i32 %24, -1
  store i32 %25, ptr %6, align 8, !tbaa !102
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_void_p_base, ptr %6, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  store ptr %28, ptr %23, align 8, !tbaa !46
  %29 = load i32, ptr %0, align 8, !tbaa !70
  %30 = add i32 %29, %1
  %31 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef null, i32 noundef %30, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %35

33:                                               ; preds = %13
  %34 = tail call fastcc ptr @vec_heap_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4)
  br label %42

35:                                               ; preds = %22
  %36 = load i32, ptr %0, align 8, !tbaa !70
  store i32 %36, ptr %31, align 8, !tbaa !70
  %37 = getelementptr inbounds %struct.vec_prefix, ptr %31, i64 0, i32 2
  %38 = getelementptr inbounds %struct.vec_prefix, ptr %0, i64 0, i32 2
  %39 = load i32, ptr %0, align 8, !tbaa !70
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %37, ptr nonnull align 8 %38, i64 %41, i1 false)
  br label %42

42:                                               ; preds = %22, %35, %33
  %43 = phi ptr [ %34, %33 ], [ %31, %35 ], [ %31, %22 ]
  ret ptr %43
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vec_stack_p_reserve_exact(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !45 {
  %3 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef 8, i64 noundef 8, i8 noundef zeroext 1)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vec_stack_o_reserve(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 !prof !45 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 0)
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vec_stack_o_reserve_exact(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 !prof !45 {
  %5 = tail call fastcc ptr @vec_stack_o_reserve_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext 1)
  ret ptr %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @vec_stack_free(ptr noundef %0) local_unnamed_addr #8 !prof !98 {
  %2 = load ptr, ptr @stack_vecs, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !105

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !102
  %6 = zext i32 %5 to i64
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i64 [ 0, %1 ], [ %6, %4 ]
  br label %9

9:                                                ; preds = %7, %12
  %10 = phi i64 [ %14, %12 ], [ %8, %7 ]
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %25, label %12, !prof !106

12:                                               ; preds = %9
  %13 = add nsw i64 %10, -1
  %14 = add nsw i64 %10, -1
  %15 = getelementptr inbounds %struct.VEC_void_p_base, ptr %2, i64 0, i32 2, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %9, !prof !107, !llvm.loop !108

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.VEC_void_p_base, ptr %2, i64 0, i32 2, i64 %13
  %20 = load i32, ptr %2, align 8, !tbaa !102
  %21 = add i32 %20, -1
  store i32 %21, ptr %2, align 8, !tbaa !102
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_void_p_base, ptr %2, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  store ptr %24, ptr %19, align 8, !tbaa !46
  br label %26

25:                                               ; preds = %9
  tail call void @free(ptr noundef %0)
  br label %26

26:                                               ; preds = %25, %18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_vec_loc_statistics() local_unnamed_addr #12 !prof !45 {
  ret void
}

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @vec_gc_p_reserve, ptr @ggc_realloc_stat, i64 1348827}
!36 = !{ptr @vec_gc_p_reserve_exact, ptr @ggc_realloc_stat, i64 51614}
!37 = !{ptr @vec_gc_o_reserve_exact, ptr @ggc_realloc_stat, i64 41}
!38 = !{ptr @vec_heap_p_reserve, ptr @xrealloc, i64 1359591}
!39 = !{ptr @vec_heap_o_reserve_1, ptr @xrealloc, i64 1}
!40 = !{ptr @vec_heap_p_reserve_exact, ptr @xrealloc, i64 1229168}
!41 = !{ptr @vec_heap_o_reserve, ptr @xrealloc, i64 869239}
!42 = !{ptr @vec_heap_o_reserve_exact, ptr @xrealloc, i64 1093409}
!43 = !{ptr @vec_stack_p_reserve_exact_1, ptr @vec_heap_o_reserve_1, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !47, i64 8}
!51 = !{!"_IO_FILE", !52, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !52, i64 112, !52, i64 116, !53, i64 120, !54, i64 128, !48, i64 130, !48, i64 131, !47, i64 136, !53, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !53, i64 184, !52, i64 192, !48, i64 196}
!52 = !{!"int", !48, i64 0}
!53 = !{!"long", !48, i64 0}
!54 = !{!"short", !48, i64 0}
!55 = !{!51, !47, i64 16}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!48, !48, i64 0}
!58 = !{!51, !47, i64 40}
!59 = !{!51, !47, i64 48}
!60 = !{!51, !52, i64 0}
!61 = !{!52, !52, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!"function_entry_count", i64 1348832}
!66 = !{!"branch_weights", i32 1400487, i32 0}
!67 = !{!"branch_weights", i32 1344472, i32 56015}
!68 = !{!69, !52, i64 4}
!69 = !{!"vec_prefix", !52, i64 0, !52, i64 4, !48, i64 8}
!70 = !{!69, !52, i64 0}
!71 = !{!"branch_weights", i32 5, i32 1344467}
!72 = !{!"branch_weights", i32 1400482, i32 0}
!73 = !{!"branch_weights", i32 1293768, i32 55064}
!74 = !{!"branch_weights", i32 53054, i32 2010}
!75 = !{!"branch_weights", i32 5, i32 1400482}
!76 = !{!"branch_weights", i32 5, i32 0}
!77 = !{!"branch_weights", i32 1344467, i32 56015}
!78 = !{!"vec.c;vec_gc_o_reserve_1"}
!79 = !{!"branch_weights", i32 1348832, i32 51650}
!80 = !{!"function_entry_count", i64 51614}
!81 = !{!"function_entry_count", i64 41}
!82 = !{!"function_entry_count", i64 1382371}
!83 = !{!"branch_weights", i32 4627666, i32 0}
!84 = !{!"branch_weights", i32 4322719, i32 304947}
!85 = !{!"branch_weights", i32 76258, i32 4246461}
!86 = !{!"branch_weights", i32 4551408, i32 0}
!87 = !{!"branch_weights", i32 2239759, i32 26416}
!88 = !{!"branch_weights", i32 12024, i32 14392}
!89 = !{!"branch_weights", i32 76258, i32 4551408}
!90 = !{!"branch_weights", i32 76258, i32 0}
!91 = !{!"branch_weights", i32 4246461, i32 304947}
!92 = !{!"function_entry_count", i64 1}
!93 = !{!"vec.c;vec_heap_o_reserve_1"}
!94 = !{!"branch_weights", i32 2266175, i32 2285233}
!95 = !{!"function_entry_count", i64 1249762}
!96 = !{!"function_entry_count", i64 883803}
!97 = !{!"function_entry_count", i64 1111729}
!98 = !{!"function_entry_count", i64 7152796}
!99 = !{!"branch_weights", i32 1, i32 7152795}
!100 = !{!101, !52, i64 4}
!101 = !{!"VEC_void_p_base", !52, i64 0, !52, i64 4, !48, i64 8}
!102 = !{!101, !52, i64 0}
!103 = !{!"branch_weights", i32 0, i32 7152795}
!104 = distinct !{!104, !63, !64}
!105 = !{!"branch_weights", i32 0, i32 7152796}
!106 = !{!"branch_weights", i32 0, i32 14191904}
!107 = !{!"branch_weights", i32 7152796, i32 7039108}
!108 = distinct !{!108, !63, !64}
