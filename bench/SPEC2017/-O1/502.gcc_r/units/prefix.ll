; ModuleID = 'prefix.c'
source_filename = "prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@std_prefix = internal unnamed_addr global ptr @.str.1, align 8
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_ROOT\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !41
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !40 {
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
  br i1 %23, label %7, label %24, !llvm.loop !57

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @update_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !60 {
  %3 = load ptr, ptr @std_prefix, align 8, !tbaa !41
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %5 = shl i64 %4, 32
  %6 = ashr exact i64 %5, 32
  %7 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %3, i64 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30, !prof !61

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 %6
  %11 = load i8, ptr %10, align 1, !tbaa !52
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %17, label %13, !prof !61

13:                                               ; preds = %9
  %14 = icmp eq i8 %11, 0
  %15 = icmp ne ptr %1, null
  %16 = and i1 %15, %14
  br i1 %16, label %19, label %30

17:                                               ; preds = %9
  %18 = icmp eq ptr %1, null
  br i1 %18, label %30, label %19, !prof !61

19:                                               ; preds = %13, %17
  %20 = load i8, ptr %1, align 1, !tbaa !52
  %21 = icmp eq i8 %20, 36
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str, ptr noundef nonnull %1, ptr noundef null) #14
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %23, %22 ], [ %1, %19 ]
  %26 = tail call ptr (ptr, ...) @concat(ptr noundef %25, ptr noundef nonnull %10, ptr noundef null) #14
  br i1 %21, label %28, label %27

27:                                               ; preds = %24
  tail call void @free(ptr noundef %25)
  br label %28

28:                                               ; preds = %27, %24
  %29 = tail call fastcc ptr @translate_name(ptr noundef %26)
  br label %32

30:                                               ; preds = %17, %13, %2
  %31 = tail call ptr @xstrdup(ptr noundef %0) #14
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %31, %30 ], [ %29, %28 ]
  br label %34

34:                                               ; preds = %107, %32
  %35 = phi ptr [ %33, %32 ], [ %108, %107 ]
  %36 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %35, i32 noundef 46)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %107, label %38, !prof !61

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !52
  %41 = icmp eq i8 %40, 46
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %36, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !52
  %45 = icmp ne i8 %44, 47
  %46 = icmp eq ptr %36, %33
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %107, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %36, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !52
  %51 = icmp eq i8 %50, 47
  br i1 %51, label %52, label %107

52:                                               ; preds = %48
  store i8 0, ptr %36, align 1, !tbaa !52
  %53 = tail call i32 @access(ptr noundef %33, i32 noundef 1)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %106, label %55

55:                                               ; preds = %52
  %56 = ptrtoint ptr %33 to i64
  br label %57

57:                                               ; preds = %55, %79
  %58 = phi ptr [ %73, %79 ], [ %36, %55 ]
  %59 = getelementptr i8, ptr %58, i64 %56
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr i8, ptr %59, i64 %61
  br label %63

63:                                               ; preds = %67, %57
  %64 = phi ptr [ %58, %57 ], [ %65, %67 ]
  %65 = getelementptr inbounds i8, ptr %64, i64 -1
  %66 = icmp eq ptr %65, %33
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i8, ptr %65, align 1, !tbaa !52
  %69 = icmp eq i8 %68, 47
  br i1 %69, label %63, label %70, !llvm.loop !62

70:                                               ; preds = %67, %63
  %71 = phi ptr [ %65, %67 ], [ %62, %63 ]
  br label %72

72:                                               ; preds = %75, %70
  %73 = phi ptr [ %71, %70 ], [ %76, %75 ]
  %74 = icmp eq ptr %73, %33
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, ptr %73, i64 -1
  %77 = load i8, ptr %76, align 1, !tbaa !52
  %78 = icmp eq i8 %77, 47
  br i1 %78, label %79, label %72, !llvm.loop !63

79:                                               ; preds = %75
  %80 = load i8, ptr %73, align 1, !tbaa !52
  %81 = icmp eq i8 %80, 46
  br i1 %81, label %57, label %87, !llvm.loop !64

82:                                               ; preds = %72
  %83 = getelementptr i8, ptr %71, i64 %56
  %84 = ptrtoint ptr %71 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr i8, ptr %83, i64 %85
  br label %87

87:                                               ; preds = %79, %82
  %88 = phi ptr [ %86, %82 ], [ %73, %79 ]
  %89 = load i8, ptr %88, align 1, !tbaa !52
  %90 = and i8 %89, -2
  %91 = icmp eq i8 %90, 46
  br i1 %91, label %106, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, ptr %36, i64 3
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi ptr [ %93, %92 ], [ %98, %94 ]
  %96 = load i8, ptr %95, align 1, !tbaa !52
  %97 = icmp eq i8 %96, 47
  %98 = getelementptr inbounds i8, ptr %95, i64 1
  br i1 %97, label %94, label %99, !llvm.loop !65

99:                                               ; preds = %94, %99
  %100 = phi ptr [ %102, %99 ], [ %95, %94 ]
  %101 = phi ptr [ %104, %99 ], [ %88, %94 ]
  %102 = getelementptr inbounds i8, ptr %100, i64 1
  %103 = load i8, ptr %100, align 1, !tbaa !52
  %104 = getelementptr inbounds i8, ptr %101, i64 1
  store i8 %103, ptr %101, align 1, !tbaa !52
  %105 = icmp eq i8 %103, 0
  br i1 %105, label %107, label %99, !llvm.loop !66

106:                                              ; preds = %87, %52
  store i8 46, ptr %36, align 1, !tbaa !52
  br label %107

107:                                              ; preds = %99, %106, %34, %48, %42, %38
  %108 = phi ptr [ %39, %48 ], [ %39, %42 ], [ %39, %38 ], [ null, %34 ], [ %36, %106 ], [ %88, %99 ]
  %109 = phi i1 [ true, %48 ], [ true, %42 ], [ true, %38 ], [ false, %34 ], [ false, %106 ], [ true, %99 ]
  br i1 %109, label %34, label %110, !prof !67

110:                                              ; preds = %107
  ret ptr %33
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @translate_name(ptr noundef %0) unnamed_addr #8 !prof !40 {
  br label %2

2:                                                ; preds = %32, %1
  %3 = phi ptr [ %0, %1 ], [ %36, %32 ]
  %4 = load i8, ptr %3, align 1, !tbaa !52
  switch i8 %4, label %37 [
    i8 64, label %5
    i8 36, label %5
  ]

5:                                                ; preds = %2, %2
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i64 [ %8, %6 ], [ 0, %5 ]
  %8 = add nuw nsw i64 %7, 1
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !52
  switch i8 %10, label %6 [
    i8 0, label %11
    i8 47, label %11
  ], !llvm.loop !68

11:                                               ; preds = %6, %6
  %12 = getelementptr inbounds i8, ptr %3, i64 %8
  %13 = alloca i8, i64 %8, align 16
  %14 = getelementptr inbounds i8, ptr %3, i64 1
  %15 = and i64 %7, 4294967295
  %16 = call ptr @strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %15)
  %17 = getelementptr inbounds i8, ptr %13, i64 %15
  store i8 0, ptr %17, align 1, !tbaa !52
  %18 = icmp eq i8 %4, 64
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = call ptr (ptr, ...) @concat(ptr noundef nonnull %13, ptr noundef nonnull @.str.2, ptr noundef null) #14
  %21 = call ptr @getenv(ptr noundef %20)
  %22 = load ptr, ptr @std_prefix, align 8
  %23 = icmp eq ptr %20, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  call void @free(ptr noundef %20)
  br label %25

25:                                               ; preds = %19, %24
  %26 = icmp eq ptr %21, null
  %27 = select i1 %26, ptr %22, ptr %21
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr %22, ptr %27
  br label %32

30:                                               ; preds = %11
  %31 = call ptr @getenv(ptr noundef nonnull %13)
  br label %32

32:                                               ; preds = %25, %30
  %33 = phi ptr [ %31, %30 ], [ %29, %25 ]
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.1, ptr %33
  %36 = call ptr (ptr, ...) @concat(ptr noundef nonnull %35, ptr noundef nonnull %12, ptr noundef null) #14
  call void @free(ptr noundef %3)
  br label %2, !llvm.loop !69

37:                                               ; preds = %2
  ret ptr %3
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @set_std_prefix(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 !prof !40 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #14
  %6 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %6, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store i8 0, ptr %7, align 1, !tbaa !52
  store ptr %5, ptr @std_prefix, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #12

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @update_path, ptr @strlen, i64 1}
!36 = !{ptr @update_path, ptr @strncmp, i64 1}
!37 = !{ptr @update_path, ptr @xstrdup, i64 1}
!38 = !{ptr @update_path, ptr @strchr, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !42, i64 8}
!46 = !{!"_IO_FILE", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !47, i64 112, !47, i64 116, !48, i64 120, !49, i64 128, !43, i64 130, !43, i64 131, !42, i64 136, !48, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !48, i64 184, !47, i64 192, !43, i64 196}
!47 = !{!"int", !43, i64 0}
!48 = !{!"long", !43, i64 0}
!49 = !{!"short", !43, i64 0}
!50 = !{!46, !42, i64 16}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!43, !43, i64 0}
!53 = !{!46, !42, i64 40}
!54 = !{!46, !42, i64 48}
!55 = !{!46, !47, i64 0}
!56 = !{!47, !47, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"function_entry_count", i64 1}
!61 = !{!"branch_weights", i32 1, i32 0}
!62 = distinct !{!62, !58, !59}
!63 = distinct !{!63, !58, !59}
!64 = distinct !{!64, !58, !59}
!65 = distinct !{!65, !58, !59}
!66 = distinct !{!66, !58, !59}
!67 = !{!"branch_weights", i32 0, i32 1}
!68 = distinct !{!68, !58, !59}
!69 = distinct !{!69, !59}
