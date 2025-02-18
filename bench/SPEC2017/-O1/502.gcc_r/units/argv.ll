; ModuleID = 'argv.c'
source_filename = "argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0Aout of memory\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
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
  %5 = tail call ptr @__ctype_tolower_loc() #19
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
  %5 = tail call ptr @__ctype_toupper_loc() #19
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @dupargv(ptr noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %8, %3 ], [ 0, %1 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  %8 = add nuw i64 %4, 1
  br i1 %7, label %9, label %3, !llvm.loop !54

9:                                                ; preds = %3
  %10 = shl i64 %4, 3
  %11 = add i64 %10, 8
  %12 = and i64 %11, 34359738360
  %13 = tail call ptr @malloc(i64 noundef %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %23

18:                                               ; preds = %45
  %19 = add nuw i64 %24, 1
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23, !llvm.loop !55

23:                                               ; preds = %15, %18
  %24 = phi i64 [ %19, %18 ], [ 0, %15 ]
  %25 = phi ptr [ %21, %18 ], [ %16, %15 ]
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25)
  %27 = shl i64 %26, 32
  %28 = add i64 %27, 4294967296
  %29 = ashr exact i64 %28, 32
  %30 = tail call ptr @malloc(i64 noundef %29) #20
  %31 = getelementptr inbounds ptr, ptr %13, i64 %24
  store ptr %30, ptr %31, align 8, !tbaa !35
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load ptr, ptr %13, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %40, %36 ], [ %34, %33 ]
  %38 = phi ptr [ %39, %36 ], [ %13, %33 ]
  tail call void @free(ptr noundef %37)
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %36, !llvm.loop !56

42:                                               ; preds = %36, %33
  tail call void @free(ptr noundef %13)
  br label %45

43:                                               ; preds = %23
  %44 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %25)
  br label %45

45:                                               ; preds = %43, %42
  br i1 %32, label %49, label %18

46:                                               ; preds = %18, %15
  %47 = phi i64 [ 0, %15 ], [ %19, %18 ]
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !35
  br label %49

49:                                               ; preds = %45, %9, %1, %46
  %50 = phi ptr [ %13, %46 ], [ null, %1 ], [ null, %9 ], [ null, %45 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local void @freeargv(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %3 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %3 ]
  tail call void @free(ptr noundef %7)
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !56

12:                                               ; preds = %6, %3
  tail call void @free(ptr noundef %0)
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define dso_local ptr @buildargv(ptr noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %141, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %5 = add i64 %4, 1
  %6 = alloca i8, i64 %5, align 16
  br label %7

7:                                                ; preds = %137, %3
  %8 = phi i64 [ %126, %137 ], [ 0, %3 ]
  %9 = phi ptr [ %129, %137 ], [ %0, %3 ]
  %10 = phi i32 [ %108, %137 ], [ 0, %3 ]
  %11 = phi i32 [ %109, %137 ], [ 0, %3 ]
  %12 = phi i32 [ %110, %137 ], [ 0, %3 ]
  %13 = phi i32 [ %56, %137 ], [ 0, %3 ]
  %14 = phi ptr [ %57, %137 ], [ null, %3 ]
  br label %15

15:                                               ; preds = %15, %7
  %16 = phi ptr [ %9, %7 ], [ %23, %15 ]
  %17 = load i8, ptr %16, align 1, !tbaa !46
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !57
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i8, ptr %16, i64 1
  br i1 %22, label %24, label %15, !llvm.loop !58

24:                                               ; preds = %15
  %25 = icmp ne i32 %13, 0
  %26 = add nsw i32 %13, -1
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %8, %27
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %55, label %30

30:                                               ; preds = %24
  %31 = icmp eq ptr %14, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = tail call dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %39

34:                                               ; preds = %30
  %35 = shl nsw i32 %13, 1
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 3
  %38 = tail call ptr @realloc(ptr noundef nonnull %14, i64 noundef %37) #21
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ 8, %32 ], [ %35, %34 ]
  %41 = phi ptr [ %33, %32 ], [ %38, %34 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  br i1 %31, label %141, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr %14, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %139, label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %51, %47 ], [ %45, %44 ]
  %49 = phi ptr [ %50, %47 ], [ %14, %44 ]
  tail call void @free(ptr noundef %48)
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = icmp eq ptr %51, null
  br i1 %52, label %139, label %47, !llvm.loop !56

53:                                               ; preds = %39
  %54 = getelementptr inbounds ptr, ptr %41, i64 %8
  store ptr null, ptr %54, align 8, !tbaa !35
  br label %55

55:                                               ; preds = %24, %53
  %56 = phi i32 [ %40, %53 ], [ %13, %24 ]
  %57 = phi ptr [ %41, %53 ], [ %14, %24 ]
  %58 = load i8, ptr %16, align 1, !tbaa !46
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %55, %97
  %61 = phi i8 [ %103, %97 ], [ %58, %55 ]
  %62 = phi i32 [ %101, %97 ], [ %12, %55 ]
  %63 = phi i32 [ %100, %97 ], [ %11, %55 ]
  %64 = phi i32 [ %99, %97 ], [ %10, %55 ]
  %65 = phi ptr [ %98, %97 ], [ %6, %55 ]
  %66 = phi ptr [ %102, %97 ], [ %16, %55 ]
  %67 = zext i8 %61 to i64
  %68 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !57
  %70 = and i16 %69, 64
  %71 = icmp eq i16 %70, 0
  %72 = icmp ne i32 %64, 0
  %73 = select i1 %71, i1 true, i1 %72
  %74 = icmp ne i32 %63, 0
  %75 = select i1 %73, i1 true, i1 %74
  %76 = icmp ne i32 %62, 0
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %60
  br i1 %76, label %79, label %81

79:                                               ; preds = %78
  %80 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %61, ptr %65, align 1, !tbaa !46
  br label %97

81:                                               ; preds = %78
  %82 = icmp eq i8 %61, 92
  br i1 %82, label %97, label %83

83:                                               ; preds = %81
  br i1 %72, label %84, label %88

84:                                               ; preds = %83
  %85 = icmp eq i8 %61, 39
  br i1 %85, label %97, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %61, ptr %65, align 1, !tbaa !46
  br label %97

88:                                               ; preds = %83
  br i1 %74, label %89, label %93

89:                                               ; preds = %88
  %90 = icmp eq i8 %61, 34
  br i1 %90, label %97, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %61, ptr %65, align 1, !tbaa !46
  br label %97

93:                                               ; preds = %88
  switch i8 %61, label %95 [
    i8 39, label %97
    i8 34, label %94
  ]

94:                                               ; preds = %93
  br label %97

95:                                               ; preds = %93
  %96 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %61, ptr %65, align 1, !tbaa !46
  br label %97

97:                                               ; preds = %93, %89, %84, %81, %91, %94, %95, %86, %79
  %98 = phi ptr [ %80, %79 ], [ %87, %86 ], [ %92, %91 ], [ %65, %94 ], [ %96, %95 ], [ %65, %81 ], [ %65, %84 ], [ %65, %89 ], [ %65, %93 ]
  %99 = phi i32 [ %64, %79 ], [ 1, %86 ], [ 0, %91 ], [ 0, %94 ], [ 0, %95 ], [ %64, %81 ], [ 0, %84 ], [ 0, %89 ], [ 1, %93 ]
  %100 = phi i32 [ %63, %79 ], [ %63, %86 ], [ 1, %91 ], [ 1, %94 ], [ 0, %95 ], [ %63, %81 ], [ %63, %84 ], [ 0, %89 ], [ 0, %93 ]
  %101 = phi i32 [ 0, %79 ], [ 0, %86 ], [ 0, %91 ], [ 0, %94 ], [ 0, %95 ], [ 1, %81 ], [ 0, %84 ], [ 0, %89 ], [ 0, %93 ]
  %102 = getelementptr inbounds i8, ptr %66, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !46
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %60, !llvm.loop !59

105:                                              ; preds = %97, %60, %55
  %106 = phi ptr [ %16, %55 ], [ %102, %97 ], [ %66, %60 ]
  %107 = phi ptr [ %6, %55 ], [ %98, %97 ], [ %65, %60 ]
  %108 = phi i32 [ %10, %55 ], [ %99, %97 ], [ %64, %60 ]
  %109 = phi i32 [ %11, %55 ], [ %100, %97 ], [ %63, %60 ]
  %110 = phi i32 [ %12, %55 ], [ %101, %97 ], [ %62, %60 ]
  store i8 0, ptr %107, align 1, !tbaa !46
  %111 = call ptr @strdup(ptr noundef nonnull %6)
  %112 = getelementptr inbounds ptr, ptr %57, i64 %8
  store ptr %111, ptr %112, align 8, !tbaa !35
  %113 = icmp eq ptr %111, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %105
  %115 = icmp eq ptr %57, null
  br i1 %115, label %141, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %57, align 8, !tbaa !35
  %118 = icmp eq ptr %117, null
  br i1 %118, label %139, label %119

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %123, %119 ], [ %117, %116 ]
  %121 = phi ptr [ %122, %119 ], [ %57, %116 ]
  tail call void @free(ptr noundef %120)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  %124 = icmp eq ptr %123, null
  br i1 %124, label %139, label %119, !llvm.loop !56

125:                                              ; preds = %105
  %126 = add nuw i64 %8, 1
  %127 = getelementptr inbounds ptr, ptr %57, i64 %126
  store ptr null, ptr %127, align 8, !tbaa !35
  br label %128

128:                                              ; preds = %128, %125
  %129 = phi ptr [ %106, %125 ], [ %136, %128 ]
  %130 = load i8, ptr %129, align 1, !tbaa !46
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !57
  %134 = and i16 %133, 64
  %135 = icmp eq i16 %134, 0
  %136 = getelementptr inbounds i8, ptr %129, i64 1
  br i1 %135, label %137, label %128, !llvm.loop !58

137:                                              ; preds = %128
  %138 = icmp eq i8 %130, 0
  br i1 %138, label %141, label %7, !llvm.loop !60

139:                                              ; preds = %47, %119, %116, %44
  %140 = phi ptr [ %14, %44 ], [ %57, %116 ], [ %57, %119 ], [ %14, %47 ]
  tail call void @free(ptr noundef %140)
  br label %141

141:                                              ; preds = %137, %139, %114, %43, %1
  %142 = phi ptr [ null, %43 ], [ null, %1 ], [ null, %114 ], [ null, %139 ], [ %57, %137 ]
  ret ptr %142
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: cold nofree nounwind uwtable
define dso_local i32 @writeargv(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #15 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2, %42
  %5 = phi ptr [ %43, %42 ], [ %0, %2 ]
  %6 = phi i32 [ %44, %42 ], [ 0, %2 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %4, %32
  %10 = phi i32 [ %33, %32 ], [ %6, %4 ]
  %11 = phi ptr [ %36, %32 ], [ %7, %4 ]
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = sext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = and i32 %13, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !57
  %20 = freeze i16 %19
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  switch i8 %12, label %27 [
    i8 92, label %24
    i8 39, label %24
    i8 34, label %24
  ]

24:                                               ; preds = %23, %23, %23, %15
  %25 = tail call i32 @fputc(i32 noundef 92, ptr noundef nonnull %1)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %24
  %28 = tail call i32 @fputc(i32 noundef %13, ptr noundef nonnull %1)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %11, i64 1
  br label %32

32:                                               ; preds = %27, %24, %30
  %33 = phi i32 [ %10, %30 ], [ 1, %24 ], [ 1, %27 ]
  %34 = phi i1 [ true, %30 ], [ false, %24 ], [ false, %27 ]
  %35 = phi i32 [ 0, %30 ], [ 6, %24 ], [ 6, %27 ]
  %36 = phi ptr [ %31, %30 ], [ %11, %24 ], [ %11, %27 ]
  br i1 %34, label %9, label %42, !llvm.loop !61

37:                                               ; preds = %9
  %38 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %1)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds ptr, ptr %5, i64 1
  br label %42

42:                                               ; preds = %32, %37, %40
  %43 = phi ptr [ %41, %40 ], [ %5, %37 ], [ %5, %32 ]
  %44 = phi i32 [ %10, %40 ], [ 1, %37 ], [ %33, %32 ]
  %45 = phi i32 [ 0, %40 ], [ 6, %37 ], [ %35, %32 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %4, label %47

47:                                               ; preds = %42, %4, %2
  %48 = phi i32 [ 1, %2 ], [ %6, %4 ], [ %44, %42 ]
  ret i32 %48
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @expandargv(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 !prof !62 {
  %3 = load i32, ptr %0, align 4, !tbaa !50
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %107, !prof !63

5:                                                ; preds = %2, %102
  %6 = phi i32 [ %104, %102 ], [ 1, %2 ]
  %7 = phi i32 [ %103, %102 ], [ 0, %2 ]
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = icmp eq i8 %12, 64
  br i1 %13, label %14, label %102, !prof !64, !llvm.loop !65

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = tail call ptr @fopen(ptr noundef nonnull %15, ptr noundef nonnull @.str)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %102, label %18, !llvm.loop !65

18:                                               ; preds = %14
  %19 = tail call i32 @fseek(ptr noundef nonnull %16, i64 noundef 0, i32 noundef 2)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %99, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @ftell(ptr noundef nonnull %16)
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %99, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @fseek(ptr noundef nonnull %16, i64 noundef 0, i32 noundef 0)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %99, label %27

27:                                               ; preds = %24
  %28 = add nuw i64 %22, 1
  %29 = tail call ptr @xmalloc(i64 noundef %28) #19
  %30 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %22, ptr noundef nonnull %16)
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @ferror(ptr noundef nonnull %16)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds i8, ptr %29, i64 %30
  store i8 0, ptr %36, align 1, !tbaa !46
  %37 = load i8, ptr %29, align 1, !tbaa !46
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = zext i8 %37 to i64
  %41 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !57
  %43 = and i16 %42, 64
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %39, %50
  %46 = phi ptr [ %47, %50 ], [ %29, %39 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !46
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50, !llvm.loop !66

50:                                               ; preds = %45
  %51 = zext i8 %48 to i64
  %52 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !57
  %54 = and i16 %53, 64
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %45, !llvm.loop !66

56:                                               ; preds = %50, %39
  %57 = phi i1 [ %38, %39 ], [ %49, %50 ]
  br i1 %57, label %58, label %60

58:                                               ; preds = %45, %35, %56
  %59 = tail call ptr @xmalloc(i64 noundef 8) #19
  store ptr null, ptr %59, align 8, !tbaa !35
  br label %62

60:                                               ; preds = %56
  %61 = tail call ptr @buildargv(ptr noundef nonnull %29)
  br label %62

62:                                               ; preds = %58, %60
  %63 = phi ptr [ %59, %58 ], [ %61, %60 ]
  %64 = load ptr, ptr %1, align 8, !tbaa !35
  %65 = tail call ptr @dupargv(ptr noundef %64)
  store ptr %65, ptr %1, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load ptr, ptr @stderr, align 8, !tbaa !35
  %69 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %68) #22
  tail call void @xexit(i32 noundef 1) #19
  br label %70

70:                                               ; preds = %62, %67
  br label %71

71:                                               ; preds = %70, %71
  %72 = phi i64 [ %76, %71 ], [ 0, %70 ]
  %73 = getelementptr inbounds ptr, ptr %63, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = icmp eq ptr %74, null
  %76 = add i64 %72, 1
  br i1 %75, label %77, label %71, !llvm.loop !67

77:                                               ; preds = %71
  %78 = load ptr, ptr %1, align 8, !tbaa !35
  %79 = load i32, ptr %0, align 4, !tbaa !50
  %80 = sext i32 %79 to i64
  %81 = add i64 %72, %80
  %82 = shl i64 %81, 3
  %83 = add i64 %82, 8
  %84 = tail call ptr @xrealloc(ptr noundef %78, i64 noundef %83) #19
  store ptr %84, ptr %1, align 8, !tbaa !35
  %85 = getelementptr inbounds ptr, ptr %84, i64 %9
  %86 = getelementptr inbounds ptr, ptr %85, i64 %72
  %87 = getelementptr inbounds ptr, ptr %85, i64 1
  %88 = load i32, ptr %0, align 4, !tbaa !50
  %89 = sub nsw i32 %88, %6
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %86, ptr nonnull align 8 %87, i64 %91, i1 false)
  %92 = load ptr, ptr %1, align 8, !tbaa !35
  %93 = getelementptr inbounds ptr, ptr %92, i64 %9
  %94 = shl i64 %72, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %93, ptr align 8 %63, i64 %94, i1 false)
  %95 = load i32, ptr %0, align 4, !tbaa !50
  %96 = trunc i64 %72 to i32
  %97 = add i32 %96, -1
  %98 = add i32 %97, %95
  store i32 %98, ptr %0, align 4, !tbaa !50
  tail call void @free(ptr noundef %63)
  tail call void @free(ptr noundef %29)
  br label %99

99:                                               ; preds = %32, %24, %21, %18, %77
  %100 = phi i32 [ %6, %18 ], [ %6, %21 ], [ %6, %24 ], [ %6, %32 ], [ %7, %77 ]
  %101 = tail call i32 @fclose(ptr noundef nonnull %16)
  br label %102

102:                                              ; preds = %14, %5, %99
  %103 = phi i32 [ %100, %99 ], [ %6, %5 ], [ %6, %14 ]
  %104 = add nsw i32 %103, 1
  %105 = load i32, ptr %0, align 4, !tbaa !50
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %5, label %107, !prof !68

107:                                              ; preds = %102, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #16

declare void @xexit(i32 noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }
attributes #20 = { allocsize(0) }
attributes #21 = { allocsize(1) }
attributes #22 = { cold }

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
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = distinct !{!56, !52, !53}
!57 = !{!43, !43, i64 0}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52, !53}
!60 = distinct !{!60, !52, !53}
!61 = distinct !{!61, !52, !53}
!62 = !{!"function_entry_count", i64 1}
!63 = !{!"branch_weights", i32 127, i32 1}
!64 = !{!"branch_weights", i32 0, i32 6}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52, !53}
!68 = !{!"branch_weights", i32 641, i32 127}
