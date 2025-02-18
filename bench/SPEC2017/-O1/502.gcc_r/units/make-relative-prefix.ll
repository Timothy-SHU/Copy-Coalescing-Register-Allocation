; ModuleID = 'make-relative-prefix.c'
source_filename = "make-relative-prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !35

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !38
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #4 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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

declare i32 @__uflow(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @make_relative_prefix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = tail call fastcc ptr @make_relative_prefix_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @make_relative_prefix_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 !prof !34 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  %11 = icmp eq ptr %2, null
  %12 = or i1 %10, %11
  br i1 %12, label %241, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @lbasename(ptr noundef %0) #17
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = tail call ptr @getenv(ptr noundef nonnull @.str)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %16
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17)
  %21 = add i64 %20, 1
  %22 = tail call i64 @llvm.umax.i64(i64 %21, i64 2)
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %24 = add i64 %23, 1
  %25 = add i64 %24, %22
  %26 = alloca i8, i64 %25, align 16
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = getelementptr inbounds i8, ptr %26, i64 2
  br label %29

29:                                               ; preds = %56, %19
  %30 = phi ptr [ %57, %56 ], [ %17, %19 ]
  br label %31

31:                                               ; preds = %29, %58
  %32 = phi ptr [ %59, %58 ], [ %30, %29 ]
  %33 = load i8, ptr %32, align 1, !tbaa !49
  switch i8 %33, label %58 [
    i8 58, label %34
    i8 0, label %34
  ]

34:                                               ; preds = %31, %31
  %35 = icmp eq ptr %32, %30
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store i8 46, ptr %26, align 16, !tbaa !49
  store i8 47, ptr %27, align 1, !tbaa !49
  store i8 0, ptr %28, align 2, !tbaa !49
  br label %49

37:                                               ; preds = %34
  %38 = ptrtoint ptr %32 to i64
  %39 = ptrtoint ptr %30 to i64
  %40 = sub i64 %38, %39
  %41 = call ptr @strncpy(ptr noundef nonnull %26, ptr noundef nonnull %30, i64 noundef %40)
  %42 = getelementptr inbounds i8, ptr %32, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !49
  %44 = icmp eq i8 %43, 47
  %45 = getelementptr inbounds i8, ptr %26, i64 %40
  br i1 %44, label %48, label %46

46:                                               ; preds = %37
  store i8 47, ptr %45, align 1, !tbaa !49
  %47 = getelementptr i8, ptr %45, i64 1
  store i8 0, ptr %47, align 1, !tbaa !49
  br label %49

48:                                               ; preds = %37
  store i8 0, ptr %45, align 1, !tbaa !49
  br label %49

49:                                               ; preds = %46, %48, %36
  %50 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %0)
  %51 = call i32 @access(ptr noundef nonnull %26, i32 noundef 1)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i8, ptr %32, align 1, !tbaa !49
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %32, i64 1
  br label %29, !llvm.loop !53

58:                                               ; preds = %31
  %59 = getelementptr inbounds i8, ptr %32, i64 1
  br label %31, !llvm.loop !53

60:                                               ; preds = %49, %53, %16, %13
  %61 = phi ptr [ %0, %13 ], [ %0, %16 ], [ %0, %53 ], [ %26, %49 ]
  %62 = icmp eq i32 %3, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call ptr @lrealpath(ptr noundef %61) #17
  br label %67

65:                                               ; preds = %60
  %66 = call ptr @strdup(ptr noundef %61)
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi ptr [ %64, %63 ], [ %66, %65 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %241, label %70

70:                                               ; preds = %67
  %71 = call fastcc ptr @split_directories(ptr noundef nonnull %68, ptr noundef nonnull %5)
  call void @free(ptr noundef %68)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %241, label %73

73:                                               ; preds = %70
  %74 = call fastcc ptr @split_directories(ptr noundef %1, ptr noundef nonnull %6)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %204, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %5, align 4, !tbaa !54
  %78 = add nsw i32 %77, -1
  store i32 %78, ptr %5, align 4, !tbaa !54
  %79 = load i32, ptr %6, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %81
  %84 = zext nneg i32 %79 to i64
  br label %85

85:                                               ; preds = %83, %93
  %86 = phi i64 [ 0, %83 ], [ %94, %93 ]
  %87 = getelementptr inbounds ptr, ptr %71, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !38
  %89 = getelementptr inbounds ptr, ptr %74, i64 %86
  %90 = load ptr, ptr %89, align 8, !tbaa !38
  %91 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(1) %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = add nuw nsw i64 %86, 1
  %95 = icmp eq i64 %94, %84
  br i1 %95, label %98, label %85, !llvm.loop !55

96:                                               ; preds = %85
  %97 = trunc i64 %86 to i32
  br label %98

98:                                               ; preds = %96, %93, %81
  %99 = phi i32 [ 0, %81 ], [ %97, %96 ], [ %79, %93 ]
  %100 = icmp slt i32 %77, 2
  %101 = icmp eq i32 %99, %79
  %102 = or i1 %100, %101
  br i1 %102, label %204, label %103

103:                                              ; preds = %98, %76
  %104 = call fastcc ptr @split_directories(ptr noundef %2, ptr noundef nonnull %7)
  %105 = icmp eq ptr %104, null
  br i1 %105, label %204, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %7, align 4
  %108 = load i32, ptr %6, align 4
  %109 = call i32 @llvm.smin.i32(i32 %107, i32 %108)
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = zext nneg i32 %109 to i64
  br label %113

113:                                              ; preds = %111, %121
  %114 = phi i64 [ 0, %111 ], [ %122, %121 ]
  %115 = getelementptr inbounds ptr, ptr %74, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !38
  %117 = getelementptr inbounds ptr, ptr %104, i64 %114
  %118 = load ptr, ptr %117, align 8, !tbaa !38
  %119 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %116, ptr noundef nonnull dereferenceable(1) %118)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = add nuw nsw i64 %114, 1
  %123 = icmp eq i64 %122, %112
  br i1 %123, label %126, label %113, !llvm.loop !56

124:                                              ; preds = %113
  %125 = trunc i64 %114 to i32
  br label %126

126:                                              ; preds = %124, %121, %106
  %127 = phi i32 [ 0, %106 ], [ %125, %124 ], [ %109, %121 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %204, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %5, align 4, !tbaa !54
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = zext nneg i32 %130 to i64
  br label %134

134:                                              ; preds = %132, %134
  %135 = phi i64 [ 0, %132 ], [ %142, %134 ]
  %136 = phi i32 [ 0, %132 ], [ %141, %134 ]
  %137 = getelementptr inbounds ptr, ptr %71, i64 %135
  %138 = load ptr, ptr %137, align 8, !tbaa !38
  %139 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %138)
  %140 = trunc i64 %139 to i32
  %141 = add i32 %136, %140
  %142 = add nuw nsw i64 %135, 1
  %143 = icmp eq i64 %142, %133
  br i1 %143, label %144, label %134, !llvm.loop !57

144:                                              ; preds = %134, %129
  %145 = phi i32 [ 0, %129 ], [ %141, %134 ]
  %146 = sub nsw i32 %108, %127
  %147 = mul i32 %146, 3
  %148 = add i32 %145, %147
  %149 = icmp slt i32 %127, %107
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = zext i32 %127 to i64
  br label %152

152:                                              ; preds = %150, %152
  %153 = phi i64 [ %151, %150 ], [ %160, %152 ]
  %154 = phi i32 [ %148, %150 ], [ %159, %152 ]
  %155 = getelementptr inbounds ptr, ptr %104, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !38
  %157 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %156)
  %158 = trunc i64 %157 to i32
  %159 = add i32 %154, %158
  %160 = add nuw nsw i64 %153, 1
  %161 = trunc i64 %160 to i32
  %162 = icmp sgt i32 %107, %161
  br i1 %162, label %152, label %163, !llvm.loop !58

163:                                              ; preds = %152, %144
  %164 = phi i32 [ %148, %144 ], [ %159, %152 ]
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = call ptr @malloc(i64 noundef %166) #18
  %168 = icmp eq ptr %167, null
  br i1 %168, label %204, label %169

169:                                              ; preds = %163
  store i8 0, ptr %167, align 1, !tbaa !49
  %170 = icmp sgt i32 %130, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = zext nneg i32 %130 to i64
  br label %173

173:                                              ; preds = %171, %173
  %174 = phi i64 [ 0, %171 ], [ %178, %173 ]
  %175 = getelementptr inbounds ptr, ptr %71, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !38
  %177 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %167, ptr noundef nonnull dereferenceable(1) %176)
  %178 = add nuw nsw i64 %174, 1
  %179 = icmp eq i64 %178, %172
  br i1 %179, label %180, label %173, !llvm.loop !59

180:                                              ; preds = %173, %169
  %181 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %167)
  %182 = getelementptr inbounds i8, ptr %167, i64 %181
  %183 = icmp slt i32 %127, %108
  br i1 %183, label %184, label %191

184:                                              ; preds = %180, %184
  %185 = phi ptr [ %188, %184 ], [ %182, %180 ]
  %186 = phi i32 [ %189, %184 ], [ %127, %180 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %185, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  %187 = getelementptr inbounds i8, ptr %185, i64 2
  %188 = getelementptr inbounds i8, ptr %185, i64 3
  store i8 47, ptr %187, align 1, !tbaa !49
  %189 = add nuw nsw i32 %186, 1
  %190 = icmp eq i32 %189, %108
  br i1 %190, label %191, label %184, !llvm.loop !60

191:                                              ; preds = %184, %180
  %192 = phi ptr [ %182, %180 ], [ %188, %184 ]
  store i8 0, ptr %192, align 1, !tbaa !49
  %193 = icmp slt i32 %127, %107
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = zext i32 %127 to i64
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ %195, %194 ], [ %201, %196 ]
  %198 = getelementptr inbounds ptr, ptr %104, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !38
  %200 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %167, ptr noundef nonnull dereferenceable(1) %199)
  %201 = add nuw nsw i64 %197, 1
  %202 = trunc i64 %201 to i32
  %203 = icmp sgt i32 %107, %202
  br i1 %203, label %196, label %204, !llvm.loop !61

204:                                              ; preds = %196, %191, %98, %163, %126, %103, %73
  %205 = phi ptr [ null, %73 ], [ null, %103 ], [ %104, %126 ], [ %104, %163 ], [ null, %98 ], [ %104, %191 ], [ %104, %196 ]
  %206 = phi ptr [ null, %73 ], [ null, %103 ], [ null, %126 ], [ null, %163 ], [ null, %98 ], [ %167, %191 ], [ %167, %196 ]
  %207 = load ptr, ptr %71, align 8, !tbaa !38
  %208 = icmp eq ptr %207, null
  br i1 %208, label %216, label %209

209:                                              ; preds = %204, %209
  %210 = phi i64 [ %212, %209 ], [ 0, %204 ]
  %211 = phi ptr [ %214, %209 ], [ %207, %204 ]
  %212 = add nuw nsw i64 %210, 1
  call void @free(ptr noundef %211)
  %213 = getelementptr inbounds ptr, ptr %71, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !38
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %209, !llvm.loop !62

216:                                              ; preds = %209, %204
  call void @free(ptr noundef %71)
  br i1 %75, label %228, label %217

217:                                              ; preds = %216
  %218 = load ptr, ptr %74, align 8, !tbaa !38
  %219 = icmp eq ptr %218, null
  br i1 %219, label %227, label %220

220:                                              ; preds = %217, %220
  %221 = phi i64 [ %223, %220 ], [ 0, %217 ]
  %222 = phi ptr [ %225, %220 ], [ %218, %217 ]
  %223 = add nuw nsw i64 %221, 1
  call void @free(ptr noundef %222)
  %224 = getelementptr inbounds ptr, ptr %74, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !38
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %220, !llvm.loop !62

227:                                              ; preds = %220, %217
  call void @free(ptr noundef %74)
  br label %228

228:                                              ; preds = %216, %227
  %229 = icmp eq ptr %205, null
  br i1 %229, label %241, label %230

230:                                              ; preds = %228
  %231 = load ptr, ptr %205, align 8, !tbaa !38
  %232 = icmp eq ptr %231, null
  br i1 %232, label %240, label %233

233:                                              ; preds = %230, %233
  %234 = phi i64 [ %236, %233 ], [ 0, %230 ]
  %235 = phi ptr [ %238, %233 ], [ %231, %230 ]
  %236 = add nuw nsw i64 %234, 1
  call void @free(ptr noundef %235)
  %237 = getelementptr inbounds ptr, ptr %205, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !38
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %233, !llvm.loop !62

240:                                              ; preds = %233, %230
  call void @free(ptr noundef %205)
  br label %241

241:                                              ; preds = %240, %228, %70, %67, %4
  %242 = phi ptr [ null, %4 ], [ null, %67 ], [ null, %70 ], [ %206, %228 ], [ %206, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret ptr %242
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @make_relative_prefix_ignore_links(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = tail call fastcc ptr @make_relative_prefix_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret ptr %4
}

declare ptr @lbasename(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

declare ptr @lrealpath(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define internal fastcc noalias noundef ptr @split_directories(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #8 !prof !34 {
  br label %3

3:                                                ; preds = %15, %2
  %4 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %5 = phi ptr [ %11, %15 ], [ %0, %2 ]
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %5, %3 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !49
  switch i8 %9, label %6 [
    i8 0, label %17
    i8 47, label %10
  ], !llvm.loop !63

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = load i8, ptr %11, align 1, !tbaa !49
  %13 = icmp eq i8 %12, 47
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %13, label %10, label %15, !llvm.loop !64

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !63

17:                                               ; preds = %6
  %18 = add nuw nsw i32 %4, 2
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 3
  %21 = tail call ptr @malloc(i64 noundef %20) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %110, label %23

23:                                               ; preds = %17
  %24 = load i8, ptr %0, align 1, !tbaa !49
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %23, %65
  %27 = phi i8 [ %69, %65 ], [ %24, %23 ]
  %28 = phi ptr [ %68, %65 ], [ %0, %23 ]
  %29 = phi ptr [ %67, %65 ], [ %0, %23 ]
  %30 = phi i32 [ %66, %65 ], [ 0, %23 ]
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = icmp eq i8 %27, 47
  br i1 %32, label %33, label %65

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %37, %33 ], [ %31, %26 ]
  %35 = load i8, ptr %34, align 1, !tbaa !49
  %36 = icmp eq i8 %35, 47
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  br i1 %36, label %33, label %38, !llvm.loop !65

38:                                               ; preds = %33
  %39 = ptrtoint ptr %34 to i64
  %40 = ptrtoint ptr %28 to i64
  %41 = sub i64 %39, %40
  %42 = shl i64 %41, 32
  %43 = add i64 %42, 4294967296
  %44 = ashr exact i64 %43, 32
  %45 = tail call ptr @malloc(i64 noundef %44) #18
  %46 = ashr exact i64 %42, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %28, i64 %46, i1 false)
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  store i8 0, ptr %47, align 1, !tbaa !49
  %48 = add nsw i32 %30, 1
  %49 = sext i32 %30 to i64
  %50 = getelementptr inbounds ptr, ptr %21, i64 %49
  store ptr %45, ptr %50, align 8, !tbaa !38
  %51 = icmp eq ptr %45, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %38
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds ptr, ptr %21, i64 %53
  store ptr null, ptr %54, align 8, !tbaa !38
  %55 = load ptr, ptr %21, align 8, !tbaa !38
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %52, %57
  %58 = phi i64 [ %60, %57 ], [ 0, %52 ]
  %59 = phi ptr [ %62, %57 ], [ %55, %52 ]
  %60 = add nuw nsw i64 %58, 1
  tail call void @free(ptr noundef %59)
  %61 = getelementptr inbounds ptr, ptr %21, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57, !llvm.loop !62

64:                                               ; preds = %57, %52
  tail call void @free(ptr noundef %21)
  br label %110

65:                                               ; preds = %38, %26
  %66 = phi i32 [ %30, %26 ], [ %48, %38 ]
  %67 = phi ptr [ %31, %26 ], [ %34, %38 ]
  %68 = phi ptr [ %28, %26 ], [ %34, %38 ]
  %69 = load i8, ptr %67, align 1, !tbaa !49
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %26, !llvm.loop !66

71:                                               ; preds = %65, %23
  %72 = phi i32 [ 0, %23 ], [ %66, %65 ]
  %73 = phi ptr [ %0, %23 ], [ %67, %65 ]
  %74 = phi ptr [ %0, %23 ], [ %68, %65 ]
  %75 = ptrtoint ptr %73 to i64
  %76 = ptrtoint ptr %74 to i64
  %77 = sub i64 %75, %76
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = shl i64 %77, 32
  %81 = add i64 %80, 4294967296
  %82 = ashr exact i64 %81, 32
  %83 = tail call ptr @malloc(i64 noundef %82) #18
  %84 = ashr exact i64 %80, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %83, ptr align 1 %74, i64 %84, i1 false)
  %85 = getelementptr inbounds i8, ptr %83, i64 %84
  store i8 0, ptr %85, align 1, !tbaa !49
  %86 = add nsw i32 %72, 1
  %87 = sext i32 %72 to i64
  %88 = getelementptr inbounds ptr, ptr %21, i64 %87
  store ptr %83, ptr %88, align 8, !tbaa !38
  br label %89

89:                                               ; preds = %79, %71
  %90 = phi i32 [ %86, %79 ], [ %72, %71 ]
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %21, i64 %91
  store ptr null, ptr %92, align 8, !tbaa !38
  %93 = getelementptr ptr, ptr %92, i64 -1
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load ptr, ptr %21, align 8, !tbaa !38
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %96, %99
  %100 = phi i64 [ %102, %99 ], [ 0, %96 ]
  %101 = phi ptr [ %104, %99 ], [ %97, %96 ]
  %102 = add nuw nsw i64 %100, 1
  tail call void @free(ptr noundef %101)
  %103 = getelementptr inbounds ptr, ptr %21, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !38
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %99, !llvm.loop !62

106:                                              ; preds = %99, %96
  tail call void @free(ptr noundef %21)
  br label %110

107:                                              ; preds = %89
  %108 = icmp eq ptr %1, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %107
  store i32 %90, ptr %1, align 4, !tbaa !54
  br label %110

110:                                              ; preds = %107, %109, %17, %106, %64
  %111 = phi ptr [ null, %64 ], [ null, %106 ], [ null, %17 ], [ %21, %109 ], [ %21, %107 ]
  ret ptr %111
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { allocsize(0) }

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
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
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
!53 = distinct !{!53, !37}
!54 = !{!44, !44, i64 0}
!55 = distinct !{!55, !36, !37}
!56 = distinct !{!56, !36, !37}
!57 = distinct !{!57, !36, !37}
!58 = distinct !{!58, !36, !37}
!59 = distinct !{!59, !36, !37}
!60 = distinct !{!60, !36, !37}
!61 = distinct !{!61, !36, !37}
!62 = distinct !{!62, !36, !37}
!63 = distinct !{!63, !36, !37}
!64 = distinct !{!64, !36, !37}
!65 = distinct !{!65, !36, !37}
!66 = distinct !{!66, !36, !37}
