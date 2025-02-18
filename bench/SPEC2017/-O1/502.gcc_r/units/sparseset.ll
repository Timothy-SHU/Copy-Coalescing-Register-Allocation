; ModuleID = 'sparseset.c'
source_filename = "sparseset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"sparseset.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !38
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !37 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !37 {
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
  br i1 %23, label %7, label %24, !llvm.loop !54

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sparseset_alloc(i32 noundef %0) local_unnamed_addr #8 !prof !57 {
  %2 = shl i32 %0, 3
  %3 = add i32 %2, 32
  %4 = zext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %4) #12
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 7
  store ptr %6, ptr %5, align 8, !tbaa !58
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 7, i64 %7
  %9 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 3
  store i32 %0, ptr %10, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.sparseset_def, ptr %5, i64 0, i32 6
  store i8 0, ptr %12, align 1, !tbaa !63
  ret ptr %5
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sparseset_clear_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !64 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !65

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %58, !prof !65

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !58
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %58, !prof !65

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !66
  %25 = add i32 %14, -1
  %26 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !63
  %28 = icmp eq i8 %27, 0
  %29 = icmp ugt i32 %12, %24
  %30 = select i1 %28, i1 true, i1 %29, !prof !65
  br i1 %30, label %48, label %31, !prof !65

31:                                               ; preds = %22
  %32 = icmp ult i32 %12, %24
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = load ptr, ptr %0, align 8, !tbaa !58
  %35 = zext i32 %24 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = zext i32 %12 to i64
  %39 = getelementptr inbounds i32, ptr %34, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %9, i64 %41
  store i32 %24, ptr %42, align 4, !tbaa !53
  store i32 %40, ptr %36, align 4, !tbaa !53
  %43 = zext i32 %37 to i64
  %44 = getelementptr inbounds i32, ptr %9, i64 %43
  store i32 %12, ptr %44, align 4, !tbaa !53
  store i32 %37, ptr %39, align 4, !tbaa !53
  br label %45

45:                                               ; preds = %33, %31
  %46 = phi i32 [ %24, %33 ], [ %12, %31 ]
  %47 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 0, ptr %47, align 4, !tbaa !67
  br label %48

48:                                               ; preds = %45, %22
  %49 = phi i32 [ %46, %45 ], [ %12, %22 ]
  %50 = load ptr, ptr %0, align 8, !tbaa !58
  %51 = zext i32 %25 to i64
  %52 = getelementptr inbounds i32, ptr %50, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !53
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %9, i64 %54
  store i32 %49, ptr %55, align 4, !tbaa !53
  %56 = zext i32 %49 to i64
  %57 = getelementptr inbounds i32, ptr %50, i64 %56
  store i32 %53, ptr %57, align 4, !tbaa !53
  store i32 %25, ptr %13, align 8, !tbaa !62
  br label %58

58:                                               ; preds = %7, %48, %16
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sparseset_copy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !37 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %6, align 1, !tbaa !63
  %7 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = load ptr, ptr %0, align 8, !tbaa !58
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi i64 [ 0, %10 ], [ %23, %15 ]
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %13, i64 %19
  %21 = trunc i64 %16 to i32
  store i32 %21, ptr %20, align 4, !tbaa !53
  %22 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %18, ptr %22, align 4, !tbaa !53
  %23 = add nuw nsw i64 %16, 1
  %24 = load i32, ptr %7, align 8, !tbaa !62
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %15, label %27, !llvm.loop !68

27:                                               ; preds = %15, %4
  %28 = phi i32 [ %8, %4 ], [ %24, %15 ]
  store i32 %28, ptr %5, align 8, !tbaa !62
  br label %29

29:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sparseset_and(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !37 {
  %4 = icmp eq ptr %1, %2
  %5 = icmp eq ptr %0, %1
  br i1 %4, label %6, label %32

6:                                                ; preds = %3
  br i1 %5, label %161, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %9, align 1, !tbaa !63
  %10 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !62
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = load ptr, ptr %0, align 8, !tbaa !58
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %26, %18 ]
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !53
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %16, i64 %22
  %24 = trunc i64 %19 to i32
  store i32 %24, ptr %23, align 4, !tbaa !53
  %25 = getelementptr inbounds i32, ptr %17, i64 %19
  store i32 %21, ptr %25, align 4, !tbaa !53
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %10, align 8, !tbaa !62
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %30, !llvm.loop !68

30:                                               ; preds = %18, %7
  %31 = phi i32 [ %11, %7 ], [ %27, %18 ]
  store i32 %31, ptr %8, align 8, !tbaa !62
  br label %161

32:                                               ; preds = %3
  br i1 %5, label %35, label %33

33:                                               ; preds = %32
  %34 = icmp eq ptr %0, %2
  br i1 %34, label %35, label %83

35:                                               ; preds = %33, %32
  %36 = phi ptr [ %1, %33 ], [ %2, %32 ]
  %37 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %37, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %38, align 4, !tbaa !67
  %39 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %39, align 1, !tbaa !63
  %40 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %struct.sparseset_def, ptr %36, i64 0, i32 3
  %42 = getelementptr inbounds %struct.sparseset_def, ptr %36, i64 0, i32 1
  %43 = getelementptr inbounds %struct.sparseset_def, ptr %36, i64 0, i32 2
  br label %44

44:                                               ; preds = %35, %76
  %45 = load i32, ptr %37, align 8, !tbaa !66
  %46 = load i32, ptr %40, align 8, !tbaa !62
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %76, %44
  store i8 0, ptr %39, align 1, !tbaa !63
  br label %161

49:                                               ; preds = %44
  %50 = load ptr, ptr %0, align 8, !tbaa !58
  %51 = load i32, ptr %37, align 8, !tbaa !66
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %50, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = load i32, ptr %41, align 4, !tbaa !61
  %56 = icmp ugt i32 %55, %54
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %58

58:                                               ; preds = %57, %49
  %59 = load ptr, ptr %42, align 8, !tbaa !60
  %60 = zext i32 %54 to i64
  %61 = getelementptr inbounds i32, ptr %59, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = load i32, ptr %43, align 8, !tbaa !62
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load ptr, ptr %36, align 8, !tbaa !58
  %67 = zext i32 %62 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !53
  %70 = icmp eq i32 %69, %54
  %71 = zext i1 %70 to i8
  br label %72

72:                                               ; preds = %58, %65
  %73 = phi i8 [ 0, %58 ], [ %71, %65 ]
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  tail call void @sparseset_clear_bit(ptr noundef nonnull %0, i32 noundef %54)
  br label %76

76:                                               ; preds = %72, %75
  %77 = load i8, ptr %38, align 4, !tbaa !67
  %78 = zext i8 %77 to i32
  %79 = load i32, ptr %37, align 8, !tbaa !66
  %80 = add i32 %79, %78
  store i32 %80, ptr %37, align 8, !tbaa !66
  store i8 1, ptr %38, align 4, !tbaa !67
  %81 = load i8, ptr %39, align 1, !tbaa !63
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %48, label %44, !llvm.loop !69

83:                                               ; preds = %33
  %84 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !62
  %88 = icmp ult i32 %85, %87
  %89 = select i1 %88, ptr %1, ptr %2
  %90 = select i1 %88, ptr %2, ptr %1
  %91 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %91, align 8, !tbaa !62
  %92 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %92, align 1, !tbaa !63
  %93 = getelementptr inbounds %struct.sparseset_def, ptr %89, i64 0, i32 4
  store i32 0, ptr %93, align 8, !tbaa !66
  %94 = getelementptr inbounds %struct.sparseset_def, ptr %89, i64 0, i32 5
  store i8 1, ptr %94, align 4, !tbaa !67
  %95 = getelementptr inbounds %struct.sparseset_def, ptr %89, i64 0, i32 6
  store i8 1, ptr %95, align 1, !tbaa !63
  %96 = getelementptr inbounds %struct.sparseset_def, ptr %89, i64 0, i32 2
  %97 = getelementptr inbounds %struct.sparseset_def, ptr %90, i64 0, i32 3
  %98 = getelementptr inbounds %struct.sparseset_def, ptr %90, i64 0, i32 1
  %99 = getelementptr inbounds %struct.sparseset_def, ptr %90, i64 0, i32 2
  %100 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %101 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  br label %102

102:                                              ; preds = %83, %154
  %103 = load i32, ptr %93, align 8, !tbaa !66
  %104 = load i32, ptr %96, align 8, !tbaa !62
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %154, %102
  store i8 0, ptr %95, align 1, !tbaa !63
  br label %161

107:                                              ; preds = %102
  %108 = load ptr, ptr %89, align 8, !tbaa !58
  %109 = load i32, ptr %93, align 8, !tbaa !66
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %108, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !53
  %113 = load i32, ptr %97, align 4, !tbaa !61
  %114 = icmp ugt i32 %113, %112
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %116

116:                                              ; preds = %115, %107
  %117 = load ptr, ptr %98, align 8, !tbaa !60
  %118 = zext i32 %112 to i64
  %119 = getelementptr inbounds i32, ptr %117, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !53
  %121 = load i32, ptr %99, align 8, !tbaa !62
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load ptr, ptr %90, align 8, !tbaa !58
  %125 = zext i32 %120 to i64
  %126 = getelementptr inbounds i32, ptr %124, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !53
  %128 = icmp eq i32 %127, %112
  %129 = zext i1 %128 to i8
  br label %130

130:                                              ; preds = %116, %123
  %131 = phi i8 [ 0, %116 ], [ %129, %123 ]
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %154, label %133

133:                                              ; preds = %130
  %134 = load i32, ptr %100, align 4, !tbaa !61
  %135 = icmp ugt i32 %134, %112
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %137

137:                                              ; preds = %136, %133
  %138 = load ptr, ptr %101, align 8, !tbaa !60
  %139 = getelementptr inbounds i32, ptr %138, i64 %118
  %140 = load i32, ptr %139, align 4, !tbaa !53
  %141 = load i32, ptr %91, align 8, !tbaa !62
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load ptr, ptr %0, align 8, !tbaa !58
  %145 = zext i32 %140 to i64
  %146 = getelementptr inbounds i32, ptr %144, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !53
  %148 = icmp eq i32 %147, %112
  br i1 %148, label %154, label %149

149:                                              ; preds = %137, %143
  %150 = add i32 %141, 1
  store i32 %150, ptr %91, align 8, !tbaa !62
  store i32 %141, ptr %139, align 4, !tbaa !53
  %151 = load ptr, ptr %0, align 8, !tbaa !58
  %152 = zext i32 %141 to i64
  %153 = getelementptr inbounds i32, ptr %151, i64 %152
  store i32 %112, ptr %153, align 4, !tbaa !53
  br label %154

154:                                              ; preds = %149, %143, %130
  %155 = load i8, ptr %94, align 4, !tbaa !67
  %156 = zext i8 %155 to i32
  %157 = load i32, ptr %93, align 8, !tbaa !66
  %158 = add i32 %157, %156
  store i32 %158, ptr %93, align 8, !tbaa !66
  store i8 1, ptr %94, align 4, !tbaa !67
  %159 = load i8, ptr %95, align 1, !tbaa !63
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %106, label %102, !llvm.loop !70

161:                                              ; preds = %106, %48, %6, %30
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sparseset_and_compl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !37 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  br label %152

8:                                                ; preds = %3
  %9 = icmp eq ptr %0, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.1) #12
  br label %11

11:                                               ; preds = %8, %10
  %12 = icmp eq ptr %0, %1
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  br i1 %12, label %14, label %83

14:                                               ; preds = %11
  %15 = load i32, ptr %13, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !62
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %20, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %21, align 4, !tbaa !67
  %22 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %22, align 1, !tbaa !63
  %23 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 1
  br label %25

25:                                               ; preds = %19, %56
  %26 = load i32, ptr %20, align 8, !tbaa !66
  %27 = load i32, ptr %13, align 8, !tbaa !62
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %152

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !58
  %31 = load i32, ptr %20, align 8, !tbaa !66
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !53
  %35 = load i32, ptr %23, align 4, !tbaa !61
  %36 = icmp ugt i32 %35, %34
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %38

38:                                               ; preds = %37, %29
  %39 = load ptr, ptr %24, align 8, !tbaa !60
  %40 = zext i32 %34 to i64
  %41 = getelementptr inbounds i32, ptr %39, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = load i32, ptr %16, align 8, !tbaa !62
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load ptr, ptr %2, align 8, !tbaa !58
  %47 = zext i32 %42 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = icmp eq i32 %49, %34
  %51 = zext i1 %50 to i8
  br label %52

52:                                               ; preds = %38, %45
  %53 = phi i8 [ 0, %38 ], [ %51, %45 ]
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @sparseset_clear_bit(ptr noundef nonnull %0, i32 noundef %34)
  br label %56

56:                                               ; preds = %52, %55
  %57 = load i8, ptr %21, align 4, !tbaa !67
  %58 = zext i8 %57 to i32
  %59 = load i32, ptr %20, align 8, !tbaa !66
  %60 = add i32 %59, %58
  store i32 %60, ptr %20, align 8, !tbaa !66
  store i8 1, ptr %21, align 4, !tbaa !67
  %61 = load i8, ptr %22, align 1, !tbaa !63
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %152, label %25, !llvm.loop !71

63:                                               ; preds = %14
  %64 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 4
  store i32 0, ptr %64, align 8, !tbaa !66
  %65 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 5
  store i8 1, ptr %65, align 4, !tbaa !67
  %66 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 6
  store i8 1, ptr %66, align 1, !tbaa !63
  br label %67

67:                                               ; preds = %63, %71
  %68 = load i32, ptr %64, align 8, !tbaa !66
  %69 = load i32, ptr %16, align 8, !tbaa !62
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %152

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !58
  %73 = load i32, ptr %64, align 8, !tbaa !66
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !53
  tail call void @sparseset_clear_bit(ptr noundef %0, i32 noundef %76)
  %77 = load i8, ptr %65, align 4, !tbaa !67
  %78 = zext i8 %77 to i32
  %79 = load i32, ptr %64, align 8, !tbaa !66
  %80 = add i32 %79, %78
  store i32 %80, ptr %64, align 8, !tbaa !66
  store i8 1, ptr %65, align 4, !tbaa !67
  %81 = load i8, ptr %66, align 1, !tbaa !63
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %152, label %67, !llvm.loop !72

83:                                               ; preds = %11
  store i32 0, ptr %13, align 8, !tbaa !62
  %84 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %84, align 1, !tbaa !63
  %85 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 4
  store i32 0, ptr %85, align 8, !tbaa !66
  %86 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 5
  store i8 1, ptr %86, align 4, !tbaa !67
  %87 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 6
  store i8 1, ptr %87, align 1, !tbaa !63
  %88 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %89 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 3
  %90 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 1
  %91 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 2
  %92 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %93 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  br label %94

94:                                               ; preds = %83, %145
  %95 = load i32, ptr %85, align 8, !tbaa !66
  %96 = load i32, ptr %88, align 8, !tbaa !62
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %152

98:                                               ; preds = %94
  %99 = load ptr, ptr %1, align 8, !tbaa !58
  %100 = load i32, ptr %85, align 8, !tbaa !66
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %99, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !53
  %104 = load i32, ptr %89, align 4, !tbaa !61
  %105 = icmp ugt i32 %104, %103
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %107

107:                                              ; preds = %106, %98
  %108 = load ptr, ptr %90, align 8, !tbaa !60
  %109 = zext i32 %103 to i64
  %110 = getelementptr inbounds i32, ptr %108, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !53
  %112 = load i32, ptr %91, align 8, !tbaa !62
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load ptr, ptr %2, align 8, !tbaa !58
  %116 = zext i32 %111 to i64
  %117 = getelementptr inbounds i32, ptr %115, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !53
  %119 = icmp eq i32 %118, %103
  %120 = zext i1 %119 to i8
  br label %121

121:                                              ; preds = %107, %114
  %122 = phi i8 [ 0, %107 ], [ %120, %114 ]
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i32, ptr %92, align 4, !tbaa !61
  %126 = icmp ugt i32 %125, %103
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %128

128:                                              ; preds = %127, %124
  %129 = load ptr, ptr %93, align 8, !tbaa !60
  %130 = getelementptr inbounds i32, ptr %129, i64 %109
  %131 = load i32, ptr %130, align 4, !tbaa !53
  %132 = load i32, ptr %13, align 8, !tbaa !62
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load ptr, ptr %0, align 8, !tbaa !58
  %136 = zext i32 %131 to i64
  %137 = getelementptr inbounds i32, ptr %135, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !53
  %139 = icmp eq i32 %138, %103
  br i1 %139, label %145, label %140

140:                                              ; preds = %128, %134
  %141 = add i32 %132, 1
  store i32 %141, ptr %13, align 8, !tbaa !62
  store i32 %132, ptr %130, align 4, !tbaa !53
  %142 = load ptr, ptr %0, align 8, !tbaa !58
  %143 = zext i32 %132 to i64
  %144 = getelementptr inbounds i32, ptr %142, i64 %143
  store i32 %103, ptr %144, align 4, !tbaa !53
  br label %145

145:                                              ; preds = %140, %134, %121
  %146 = load i8, ptr %86, align 4, !tbaa !67
  %147 = zext i8 %146 to i32
  %148 = load i32, ptr %85, align 8, !tbaa !66
  %149 = add i32 %148, %147
  store i32 %149, ptr %85, align 8, !tbaa !66
  store i8 1, ptr %86, align 4, !tbaa !67
  %150 = load i8, ptr %87, align 1, !tbaa !63
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %94, !llvm.loop !73

152:                                              ; preds = %94, %145, %67, %71, %25, %56, %5
  %153 = phi ptr [ %7, %5 ], [ %22, %56 ], [ %22, %25 ], [ %66, %71 ], [ %66, %67 ], [ %87, %145 ], [ %87, %94 ]
  store i8 0, ptr %153, align 1, !tbaa !63
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @sparseset_ior(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !37 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %155, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %9, align 1, !tbaa !63
  %10 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !62
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = load ptr, ptr %0, align 8, !tbaa !58
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %26, %18 ]
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !53
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %16, i64 %22
  %24 = trunc i64 %19 to i32
  store i32 %24, ptr %23, align 4, !tbaa !53
  %25 = getelementptr inbounds i32, ptr %17, i64 %19
  store i32 %21, ptr %25, align 4, !tbaa !53
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %10, align 8, !tbaa !62
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %30, !llvm.loop !68

30:                                               ; preds = %18, %7
  %31 = phi i32 [ %11, %7 ], [ %27, %18 ]
  store i32 %31, ptr %8, align 8, !tbaa !62
  br label %155

32:                                               ; preds = %3
  %33 = icmp eq ptr %0, %2
  br i1 %33, label %34, label %81

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 4
  store i32 0, ptr %35, align 8, !tbaa !66
  %36 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 5
  store i8 1, ptr %36, align 4, !tbaa !67
  %37 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 6
  store i8 1, ptr %37, align 1, !tbaa !63
  %38 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %39 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  br label %42

42:                                               ; preds = %34, %74
  %43 = load i32, ptr %35, align 8, !tbaa !66
  %44 = load i32, ptr %38, align 8, !tbaa !62
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %74, %42
  store i8 0, ptr %37, align 1, !tbaa !63
  br label %155

47:                                               ; preds = %42
  %48 = load ptr, ptr %1, align 8, !tbaa !58
  %49 = load i32, ptr %35, align 8, !tbaa !66
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !53
  %53 = load i32, ptr %39, align 4, !tbaa !61
  %54 = icmp ugt i32 %53, %52
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %56

56:                                               ; preds = %55, %47
  %57 = load ptr, ptr %40, align 8, !tbaa !60
  %58 = zext i32 %52 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !53
  %61 = load i32, ptr %41, align 8, !tbaa !62
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !58
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !53
  %68 = icmp eq i32 %67, %52
  br i1 %68, label %74, label %69

69:                                               ; preds = %56, %63
  %70 = add i32 %61, 1
  store i32 %70, ptr %41, align 8, !tbaa !62
  store i32 %61, ptr %59, align 4, !tbaa !53
  %71 = load ptr, ptr %0, align 8, !tbaa !58
  %72 = zext i32 %61 to i64
  %73 = getelementptr inbounds i32, ptr %71, i64 %72
  store i32 %52, ptr %73, align 4, !tbaa !53
  br label %74

74:                                               ; preds = %63, %69
  %75 = load i8, ptr %36, align 4, !tbaa !67
  %76 = zext i8 %75 to i32
  %77 = load i32, ptr %35, align 8, !tbaa !66
  %78 = add i32 %77, %76
  store i32 %78, ptr %35, align 8, !tbaa !66
  store i8 1, ptr %36, align 4, !tbaa !67
  %79 = load i8, ptr %37, align 1, !tbaa !63
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %46, label %42, !llvm.loop !74

81:                                               ; preds = %32
  %82 = icmp eq ptr %0, %1
  br i1 %82, label %108, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %84, align 8, !tbaa !62
  %85 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 0, ptr %85, align 1, !tbaa !63
  %86 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !62
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %1, align 8, !tbaa !58
  %91 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !60
  %93 = load ptr, ptr %0, align 8, !tbaa !58
  br label %94

94:                                               ; preds = %89, %94
  %95 = phi i64 [ 0, %89 ], [ %102, %94 ]
  %96 = getelementptr inbounds i32, ptr %90, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !53
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %92, i64 %98
  %100 = trunc i64 %95 to i32
  store i32 %100, ptr %99, align 4, !tbaa !53
  %101 = getelementptr inbounds i32, ptr %93, i64 %95
  store i32 %97, ptr %101, align 4, !tbaa !53
  %102 = add nuw nsw i64 %95, 1
  %103 = load i32, ptr %86, align 8, !tbaa !62
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %94, label %106, !llvm.loop !68

106:                                              ; preds = %94, %83
  %107 = phi i32 [ %87, %83 ], [ %103, %94 ]
  store i32 %107, ptr %84, align 8, !tbaa !62
  br label %108

108:                                              ; preds = %106, %81
  %109 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 4
  store i32 0, ptr %109, align 8, !tbaa !66
  %110 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 5
  store i8 1, ptr %110, align 4, !tbaa !67
  %111 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 6
  store i8 1, ptr %111, align 1, !tbaa !63
  %112 = getelementptr inbounds %struct.sparseset_def, ptr %2, i64 0, i32 2
  %113 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %114 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %115 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  br label %116

116:                                              ; preds = %108, %148
  %117 = load i32, ptr %109, align 8, !tbaa !66
  %118 = load i32, ptr %112, align 8, !tbaa !62
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %148, %116
  store i8 0, ptr %111, align 1, !tbaa !63
  br label %155

121:                                              ; preds = %116
  %122 = load ptr, ptr %2, align 8, !tbaa !58
  %123 = load i32, ptr %109, align 8, !tbaa !66
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %122, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !53
  %127 = load i32, ptr %113, align 4, !tbaa !61
  %128 = icmp ugt i32 %127, %126
  br i1 %128, label %130, label %129

129:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %130

130:                                              ; preds = %129, %121
  %131 = load ptr, ptr %114, align 8, !tbaa !60
  %132 = zext i32 %126 to i64
  %133 = getelementptr inbounds i32, ptr %131, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !53
  %135 = load i32, ptr %115, align 8, !tbaa !62
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load ptr, ptr %0, align 8, !tbaa !58
  %139 = zext i32 %134 to i64
  %140 = getelementptr inbounds i32, ptr %138, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !53
  %142 = icmp eq i32 %141, %126
  br i1 %142, label %148, label %143

143:                                              ; preds = %130, %137
  %144 = add i32 %135, 1
  store i32 %144, ptr %115, align 8, !tbaa !62
  store i32 %135, ptr %133, align 4, !tbaa !53
  %145 = load ptr, ptr %0, align 8, !tbaa !58
  %146 = zext i32 %135 to i64
  %147 = getelementptr inbounds i32, ptr %145, i64 %146
  store i32 %126, ptr %147, align 4, !tbaa !53
  br label %148

148:                                              ; preds = %137, %143
  %149 = load i8, ptr %110, align 4, !tbaa !67
  %150 = zext i8 %149 to i32
  %151 = load i32, ptr %109, align 8, !tbaa !66
  %152 = add i32 %151, %150
  store i32 %152, ptr %109, align 8, !tbaa !66
  store i8 1, ptr %110, align 4, !tbaa !67
  %153 = load i8, ptr %111, align 1, !tbaa !63
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %120, label %116, !llvm.loop !75

155:                                              ; preds = %120, %46, %30, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @sparseset_equal_p(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #11 !prof !37 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %12, align 4, !tbaa !67
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %13, align 1, !tbaa !63
  %14 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.sparseset_def, ptr %1, i64 0, i32 1
  br label %16

16:                                               ; preds = %10, %47
  %17 = load i32, ptr %11, align 8, !tbaa !66
  %18 = load i32, ptr %5, align 8, !tbaa !62
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %47, %16
  store i8 0, ptr %13, align 1, !tbaa !63
  br label %54

21:                                               ; preds = %16
  %22 = load ptr, ptr %0, align 8, !tbaa !58
  %23 = load i32, ptr %11, align 8, !tbaa !66
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = load i32, ptr %14, align 4, !tbaa !61
  %28 = icmp ugt i32 %27, %26
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.1) #12
  br label %30

30:                                               ; preds = %29, %21
  %31 = load ptr, ptr %15, align 8, !tbaa !60
  %32 = zext i32 %26 to i64
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !53
  %35 = load i32, ptr %7, align 8, !tbaa !62
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load ptr, ptr %1, align 8, !tbaa !58
  %39 = zext i32 %34 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !53
  %42 = icmp eq i32 %41, %26
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %30, %37
  %45 = phi i8 [ 0, %30 ], [ %43, %37 ]
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %12, align 4, !tbaa !67
  %49 = zext i8 %48 to i32
  %50 = load i32, ptr %11, align 8, !tbaa !66
  %51 = add i32 %50, %49
  store i32 %51, ptr %11, align 8, !tbaa !66
  store i8 1, ptr %12, align 4, !tbaa !67
  %52 = load i8, ptr %13, align 1, !tbaa !63
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %20, label %16, !llvm.loop !76

54:                                               ; preds = %44, %20, %4, %2
  %55 = phi i8 [ 1, %2 ], [ 0, %4 ], [ 1, %20 ], [ 0, %44 ]
  ret i8 %55
}

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
attributes #10 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @sparseset_alloc, ptr @xcalloc, i64 76}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !39, i64 8}
!43 = !{!"_IO_FILE", !44, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !44, i64 112, !44, i64 116, !45, i64 120, !46, i64 128, !40, i64 130, !40, i64 131, !39, i64 136, !45, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !45, i64 184, !44, i64 192, !40, i64 196}
!44 = !{!"int", !40, i64 0}
!45 = !{!"long", !40, i64 0}
!46 = !{!"short", !40, i64 0}
!47 = !{!43, !39, i64 16}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!40, !40, i64 0}
!50 = !{!43, !39, i64 40}
!51 = !{!43, !39, i64 48}
!52 = !{!43, !44, i64 0}
!53 = !{!44, !44, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"function_entry_count", i64 76}
!58 = !{!59, !39, i64 0}
!59 = !{!"sparseset_def", !39, i64 0, !39, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !40, i64 28, !40, i64 29, !40, i64 32}
!60 = !{!59, !39, i64 8}
!61 = !{!59, !44, i64 20}
!62 = !{!59, !44, i64 16}
!63 = !{!59, !40, i64 29}
!64 = !{!"function_entry_count", i64 335817}
!65 = !{!"branch_weights", i32 335817, i32 0}
!66 = !{!59, !44, i64 24}
!67 = !{!59, !40, i64 28}
!68 = distinct !{!68, !55, !56}
!69 = distinct !{!69, !55, !56}
!70 = distinct !{!70, !55, !56}
!71 = distinct !{!71, !55, !56}
!72 = distinct !{!72, !55, !56}
!73 = distinct !{!73, !55, !56}
!74 = distinct !{!74, !55, !56}
!75 = distinct !{!75, !55, !56}
!76 = distinct !{!76, !55, !56}
