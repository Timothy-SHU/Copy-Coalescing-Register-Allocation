; ModuleID = 'ebitmap.c'
source_filename = "ebitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ebitmap_def = type { i32, ptr, i32, i32, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"ebitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"n_words = %d, set = {\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ebitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i64, ptr %6, align 8, !tbaa !58
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi i64 [ %9, %8 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = load i64, ptr %6, align 8, !tbaa !58
  %23 = and i64 %22, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @sbitmap_popcount(ptr noundef %3, i64 noundef 0) #14
  %27 = trunc i64 %26 to i32
  %28 = and i64 %26, 4294967295
  %29 = getelementptr inbounds i64, ptr %17, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !58
  %31 = add i32 %27, 1
  br label %32

32:                                               ; preds = %21, %15, %10, %25
  %33 = phi i64 [ %30, %25 ], [ 0, %10 ], [ 0, %15 ], [ 0, %21 ]
  %34 = phi i32 [ %31, %25 ], [ 0, %10 ], [ 0, %15 ], [ 0, %21 ]
  %35 = phi ptr [ %17, %25 ], [ null, %10 ], [ %17, %15 ], [ %17, %21 ]
  br label %36

36:                                               ; preds = %123, %32
  %37 = phi i32 [ 0, %32 ], [ %115, %123 ]
  %38 = phi i32 [ 0, %32 ], [ %116, %123 ]
  %39 = phi i64 [ %33, %32 ], [ %124, %123 ]
  %40 = phi i64 [ %11, %32 ], [ %118, %123 ]
  %41 = phi i32 [ 0, %32 ], [ %125, %123 ]
  %42 = phi i32 [ 0, %32 ], [ %120, %123 ]
  %43 = phi i32 [ %34, %32 ], [ %121, %123 ]
  %44 = phi i1 [ true, %32 ], [ false, %123 ]
  br i1 %14, label %114, label %45

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %45
  %48 = lshr i64 %40, 1
  %49 = add i32 %38, 1
  %50 = icmp ult i64 %40, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = add i32 %37, 1
  %53 = tail call i32 @llvm.umax.i32(i32 %5, i32 %52)
  %54 = add i32 %37, 1
  %55 = icmp ult i32 %54, %5
  br i1 %55, label %68, label %87

56:                                               ; preds = %68
  %57 = shl i32 %69, 6
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ %37, %47 ], [ %69, %56 ]
  %60 = phi i32 [ %49, %47 ], [ %57, %56 ]
  %61 = phi i64 [ %48, %47 ], [ %72, %56 ]
  %62 = phi i1 [ %50, %47 ], [ %73, %56 ]
  %63 = and i64 %61, 1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %74, label %81

65:                                               ; preds = %68
  %66 = add i32 %69, 1
  %67 = icmp ult i32 %66, %5
  br i1 %67, label %68, label %85, !llvm.loop !62

68:                                               ; preds = %51, %65
  %69 = phi i32 [ %66, %65 ], [ %54, %51 ]
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %6, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !58
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %65, label %56, !llvm.loop !62

74:                                               ; preds = %58, %74
  %75 = phi i64 [ %78, %74 ], [ %61, %58 ]
  %76 = phi i32 [ %77, %74 ], [ %60, %58 ]
  %77 = add i32 %76, 1
  %78 = lshr exact i64 %75, 1
  %79 = and i64 %75, 2
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %74, label %81, !llvm.loop !63

81:                                               ; preds = %74, %58
  %82 = phi i32 [ %60, %58 ], [ %77, %74 ]
  %83 = phi i64 [ %61, %58 ], [ %78, %74 ]
  %84 = shl i32 %82, 6
  br label %87

85:                                               ; preds = %65
  %86 = shl i32 %69, 6
  br label %87

87:                                               ; preds = %85, %51, %81
  %88 = phi i1 [ %62, %81 ], [ %50, %51 ], [ %73, %85 ]
  %89 = phi i32 [ %59, %81 ], [ %53, %51 ], [ %53, %85 ]
  %90 = phi i32 [ %82, %81 ], [ %49, %51 ], [ %86, %85 ]
  %91 = phi i64 [ %83, %81 ], [ %48, %51 ], [ %72, %85 ]
  %92 = phi i32 [ %84, %81 ], [ 0, %51 ], [ 0, %85 ]
  br i1 %88, label %114, label %93

93:                                               ; preds = %87
  %94 = add i32 %43, 1
  %95 = zext i32 %43 to i64
  %96 = getelementptr inbounds i64, ptr %35, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !58
  br label %98

98:                                               ; preds = %93, %45
  %99 = phi i32 [ %89, %93 ], [ %37, %45 ]
  %100 = phi i32 [ %90, %93 ], [ %38, %45 ]
  %101 = phi i64 [ %97, %93 ], [ %39, %45 ]
  %102 = phi i64 [ %91, %93 ], [ %40, %45 ]
  %103 = phi i32 [ %92, %93 ], [ %41, %45 ]
  %104 = phi i32 [ %94, %93 ], [ %43, %45 ]
  %105 = and i64 %101, 1
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %98, %107
  %108 = phi i32 [ %110, %107 ], [ %103, %98 ]
  %109 = phi i64 [ %111, %107 ], [ %101, %98 ]
  %110 = add i32 %108, 1
  %111 = lshr exact i64 %109, 1
  %112 = and i64 %109, 2
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %107, label %114, !llvm.loop !64

114:                                              ; preds = %107, %98, %36, %87
  %115 = phi i32 [ %37, %36 ], [ %89, %87 ], [ %99, %98 ], [ %99, %107 ]
  %116 = phi i32 [ %38, %36 ], [ %90, %87 ], [ %100, %98 ], [ %100, %107 ]
  %117 = phi i64 [ %39, %36 ], [ %39, %87 ], [ %101, %98 ], [ %111, %107 ]
  %118 = phi i64 [ %40, %36 ], [ %91, %87 ], [ %102, %98 ], [ %102, %107 ]
  %119 = phi i32 [ %41, %36 ], [ %41, %87 ], [ %103, %98 ], [ %110, %107 ]
  %120 = phi i32 [ %42, %36 ], [ %42, %87 ], [ %103, %98 ], [ %110, %107 ]
  %121 = phi i32 [ %43, %36 ], [ %43, %87 ], [ %104, %98 ], [ %104, %107 ]
  %122 = phi i1 [ true, %36 ], [ true, %87 ], [ false, %98 ], [ false, %107 ]
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = lshr i64 %117, 1
  %125 = add i32 %119, 1
  br label %36, !llvm.loop !65

126:                                              ; preds = %114
  %127 = select i1 %44, i32 -1, i32 %120
  ret i32 %127
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ebitmap_clear(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  store ptr null, ptr %2, align 8, !tbaa !60
  br label %6

6:                                                ; preds = %1, %5
  store i32 0, ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void @sbitmap_zero(ptr noundef %8) #14
  %9 = load ptr, ptr %7, align 8, !tbaa !54
  %10 = tail call ptr @sbitmap_resize(ptr noundef %9, i32 noundef 1, i32 noundef 0) #14
  store ptr %10, ptr %7, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  store i32 0, ptr %13, align 4, !tbaa !68
  ret void
}

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ebitmap_alloc(i32 noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = tail call ptr @xmalloc(i64 noundef 40) #14
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 64, i32 %0
  %5 = add i32 %4, 63
  %6 = icmp ult i32 %5, 64
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = lshr i32 %5, 6
  %9 = shl nuw nsw i32 %8, 3
  %10 = zext nneg i32 %9 to i64
  %11 = tail call ptr @xmalloc(i64 noundef %10) #14
  %12 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !60
  store i32 %8, ptr %2, align 8, !tbaa !66
  br label %15

13:                                               ; preds = %1
  store i32 0, ptr %2, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !60
  br label %15

15:                                               ; preds = %7, %13
  %16 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %4) #14
  %17 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !54
  tail call void @sbitmap_zero(ptr noundef %16) #14
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 5
  store ptr null, ptr %19, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 3
  store i32 0, ptr %20, align 4, !tbaa !68
  ret ptr %2
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc_with_popcount(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ebitmap_clear_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = lshr i32 %1, 6
  %4 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %101, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = icmp ult i32 %3, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %7
  %14 = lshr i32 %1, 12
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = and i32 %3, 63
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = and i64 %17, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %101, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !68
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %39, label %31

31:                                               ; preds = %27, %23
  %32 = zext nneg i32 %3 to i64
  %33 = tail call i64 @sbitmap_popcount(ptr noundef %9, i64 noundef %32) #14
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = and i64 %33, 4294967295
  %38 = getelementptr inbounds i64, ptr %36, i64 %37
  br label %39

39:                                               ; preds = %27, %31
  %40 = phi i32 [ %34, %31 ], [ 0, %27 ]
  %41 = phi i1 [ false, %31 ], [ true, %27 ]
  %42 = phi ptr [ %38, %31 ], [ %25, %27 ]
  %43 = and i32 %1, 63
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = xor i64 %45, -1
  %47 = load i64, ptr %42, align 8, !tbaa !58
  %48 = and i64 %47, %46
  store i64 %48, ptr %42, align 8, !tbaa !58
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %101

50:                                               ; preds = %39
  br i1 %41, label %51, label %56

51:                                               ; preds = %50
  %52 = load ptr, ptr %8, align 8, !tbaa !54
  %53 = zext nneg i32 %3 to i64
  %54 = tail call i64 @sbitmap_popcount(ptr noundef %52, i64 noundef %53) #14
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i32 [ %40, %50 ], [ %55, %51 ]
  %58 = load ptr, ptr %24, align 8, !tbaa !67
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !68
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = icmp ugt i32 %62, %3
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = getelementptr inbounds i64, ptr %58, i64 -1
  br label %68

68:                                               ; preds = %60, %66
  %69 = phi ptr [ %67, %66 ], [ null, %60 ]
  store ptr %69, ptr %24, align 8, !tbaa !67
  br label %70

70:                                               ; preds = %68, %64, %56
  %71 = load ptr, ptr %8, align 8, !tbaa !54
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3, i64 %15
  %76 = load i64, ptr %75, align 8, !tbaa !58
  %77 = and i64 %76, %20
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, ptr %72, i64 %15
  %81 = load i8, ptr %80, align 1, !tbaa !46
  %82 = add i8 %81, -1
  store i8 %82, ptr %80, align 1, !tbaa !46
  br label %83

83:                                               ; preds = %70, %74, %79
  %84 = xor i64 %20, -1
  %85 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3, i64 %15
  %86 = load i64, ptr %85, align 8, !tbaa !58
  %87 = and i64 %86, %84
  store i64 %87, ptr %85, align 8, !tbaa !58
  %88 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !60
  %90 = zext i32 %57 to i64
  %91 = getelementptr inbounds i64, ptr %89, i64 %90
  %92 = add i32 %57, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, ptr %89, i64 %93
  %95 = load i32, ptr %4, align 8, !tbaa !59
  %96 = sub i32 %95, %57
  %97 = zext i32 %96 to i64
  %98 = shl nuw nsw i64 %97, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %91, ptr align 8 %94, i64 %98, i1 false)
  %99 = load i32, ptr %4, align 8, !tbaa !59
  %100 = add i32 %99, -1
  store i32 %100, ptr %4, align 8, !tbaa !59
  br label %101

101:                                              ; preds = %39, %83, %7, %13, %2
  ret void
}

declare i64 @sbitmap_popcount(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold nounwind uwtable
define dso_local void @ebitmap_set_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = lshr i32 %1, 6
  %4 = and i32 %1, 63
  %5 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = zext nneg i32 %4 to i64
  %14 = shl nuw i64 1, %13
  %15 = load i64, ptr %6, align 8, !tbaa !58
  %16 = or i64 %15, %14
  store i64 %16, ptr %6, align 8, !tbaa !58
  br label %130

17:                                               ; preds = %8, %2
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = icmp ult i32 %3, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = add nuw nsw i32 %3, 1
  %25 = tail call ptr @sbitmap_resize(ptr noundef %19, i32 noundef %24, i32 noundef 0) #14
  store ptr %25, ptr %18, align 8, !tbaa !54
  br label %26

26:                                               ; preds = %23, %17
  %27 = load ptr, ptr %18, align 8, !tbaa !54
  %28 = lshr i32 %1, 12
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %27, i64 0, i32 3, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !58
  %32 = and i32 %3, 63
  %33 = zext nneg i32 %32 to i64
  %34 = shl nuw i64 1, %33
  %35 = and i64 %31, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %116

37:                                               ; preds = %26
  %38 = load ptr, ptr %27, align 8, !tbaa !69
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %38, i64 %29
  %42 = load i8, ptr %41, align 1, !tbaa !46
  %43 = add i8 %42, 1
  store i8 %43, ptr %41, align 1, !tbaa !46
  br label %44

44:                                               ; preds = %37, %40
  %45 = load i64, ptr %30, align 8, !tbaa !58
  %46 = or i64 %45, %34
  store i64 %46, ptr %30, align 8, !tbaa !58
  %47 = load ptr, ptr %18, align 8, !tbaa !54
  %48 = zext nneg i32 %3 to i64
  %49 = tail call i64 @sbitmap_popcount(ptr noundef %47, i64 noundef %48) #14
  %50 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !59
  %52 = zext i32 %51 to i64
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.1) #14
  br label %55

55:                                               ; preds = %44, %54
  %56 = load i32, ptr %50, align 8, !tbaa !59
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %49, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %61 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %62 = trunc i64 %49 to i32
  br label %63

63:                                               ; preds = %59, %86
  %64 = phi i64 [ %57, %59 ], [ %91, %86 ]
  %65 = phi i32 [ %56, %59 ], [ %82, %86 ]
  %66 = load i32, ptr %0, align 8, !tbaa !66
  %67 = icmp ugt i32 %66, %65
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = add i32 %65, 1
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 %69, ptr %0, align 8, !tbaa !66
  br label %79

72:                                               ; preds = %68
  %73 = lshr i32 %69, 2
  %74 = add i32 %73, %69
  store i32 %74, ptr %0, align 8, !tbaa !66
  %75 = load ptr, ptr %60, align 8, !tbaa !60
  %76 = zext i32 %74 to i64
  %77 = shl nuw nsw i64 %76, 3
  %78 = tail call ptr @xrealloc(ptr noundef %75, i64 noundef %77) #14
  store ptr %78, ptr %60, align 8, !tbaa !60
  br label %79

79:                                               ; preds = %63, %71, %72
  %80 = load ptr, ptr %61, align 8, !tbaa !60
  %81 = getelementptr inbounds i64, ptr %80, i64 %64
  %82 = add i32 %65, -1
  %83 = load i32, ptr %0, align 8, !tbaa !66
  %84 = icmp ugt i32 %83, %82
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %86

86:                                               ; preds = %79, %85
  %87 = load ptr, ptr %61, align 8, !tbaa !60
  %88 = zext i32 %82 to i64
  %89 = getelementptr inbounds i64, ptr %87, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !58
  store i64 %90, ptr %81, align 8, !tbaa !58
  %91 = zext i32 %82 to i64
  %92 = icmp ugt i32 %82, %62
  br i1 %92, label %63, label %93, !llvm.loop !70

93:                                               ; preds = %86, %55
  %94 = load i32, ptr %50, align 8, !tbaa !59
  %95 = add i32 %94, 1
  store i32 %95, ptr %50, align 8, !tbaa !59
  %96 = trunc i64 %49 to i32
  %97 = load i32, ptr %0, align 8, !tbaa !66
  %98 = icmp ugt i32 %97, %96
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = add i32 %96, 1
  %101 = icmp ult i32 %97, %100
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 %100, ptr %0, align 8, !tbaa !66
  br label %111

103:                                              ; preds = %99
  %104 = lshr i32 %100, 2
  %105 = add i32 %104, %100
  store i32 %105, ptr %0, align 8, !tbaa !66
  %106 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  %108 = zext i32 %105 to i64
  %109 = shl nuw nsw i64 %108, 3
  %110 = tail call ptr @xrealloc(ptr noundef %107, i64 noundef %109) #14
  store ptr %110, ptr %106, align 8, !tbaa !60
  br label %111

111:                                              ; preds = %93, %102, %103
  %112 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  %114 = and i64 %49, 4294967295
  %115 = getelementptr inbounds i64, ptr %113, i64 %114
  store i64 0, ptr %115, align 8, !tbaa !58
  br label %119

116:                                              ; preds = %26
  %117 = zext nneg i32 %3 to i64
  %118 = tail call i64 @sbitmap_popcount(ptr noundef %27, i64 noundef %117) #14
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi i64 [ %118, %116 ], [ %49, %111 ]
  %121 = zext nneg i32 %4 to i64
  %122 = shl nuw i64 1, %121
  %123 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !60
  %125 = and i64 %120, 4294967295
  %126 = getelementptr inbounds i64, ptr %124, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !58
  %128 = or i64 %127, %122
  store i64 %128, ptr %126, align 8, !tbaa !58
  store ptr %126, ptr %5, align 8, !tbaa !67
  %129 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  store i32 %3, ptr %129, align 4, !tbaa !68
  br label %130

130:                                              ; preds = %119, %12
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ebitmap_bit_p(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = lshr i32 %1, 6
  %4 = and i32 %1, 63
  %5 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %40, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !61
  %21 = icmp ult i32 %3, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = lshr i32 %1, 12
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !58
  %27 = and i32 %3, 63
  %28 = zext nneg i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %26, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 3
  store i32 %3, ptr %33, align 4, !tbaa !68
  %34 = zext nneg i32 %3 to i64
  %35 = tail call i64 @sbitmap_popcount(ptr noundef %18, i64 noundef %34) #14
  %36 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = and i64 %35, 4294967295
  %39 = getelementptr inbounds i64, ptr %37, i64 %38
  store ptr %39, ptr %9, align 8, !tbaa !67
  br label %40

40:                                               ; preds = %12, %32
  %41 = phi ptr [ %39, %32 ], [ %10, %12 ]
  %42 = load i64, ptr %41, align 8, !tbaa !58
  %43 = zext nneg i32 %4 to i64
  %44 = lshr i64 %42, %43
  %45 = trunc i64 %44 to i8
  %46 = and i8 %45, 1
  br label %47

47:                                               ; preds = %40, %16, %22, %2
  %48 = phi i8 [ 0, %2 ], [ 0, %22 ], [ 0, %16 ], [ %46, %40 ]
  ret i8 %48
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ebitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  tail call void @free(ptr noundef %5)
  %6 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @free(ptr noundef %6)
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %10) #14
  store ptr %11, ptr %3, align 8, !tbaa !54
  %12 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void @sbitmap_copy(ptr noundef %11, ptr noundef %12) #14
  %13 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = load i32, ptr %0, align 8, !tbaa !66
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 %14, ptr %0, align 8, !tbaa !66
  br label %26

18:                                               ; preds = %2
  %19 = lshr i32 %14, 2
  %20 = add i32 %19, %14
  store i32 %20, ptr %0, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = zext i32 %20 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = tail call ptr @xrealloc(ptr noundef %22, i64 noundef %24) #14
  store ptr %25, ptr %21, align 8, !tbaa !60
  br label %26

26:                                               ; preds = %17, %18
  %27 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = load i32, ptr %13, align 8, !tbaa !59
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %30, i64 %33, i1 false)
  %34 = load i32, ptr %13, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %34, ptr %35, align 8, !tbaa !59
  %36 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %36, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_ebitmap(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call i32 @sbitmap_last_set_bit(ptr noundef %4) #14
  %6 = shl i32 %5, 6
  %7 = add i32 %6, 64
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %9)
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2, %25
  %13 = phi i32 [ %26, %25 ], [ 30, %2 ]
  %14 = phi i32 [ %27, %25 ], [ 0, %2 ]
  %15 = tail call zeroext i8 @ebitmap_bit_p(ptr noundef %1, i32 noundef %14), !range !71
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = icmp ugt i32 %13, 70
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ 0, %19 ], [ %13, %17 ]
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %14)
  %24 = add i32 %23, %22
  br label %25

25:                                               ; preds = %12, %21
  %26 = phi i32 [ %24, %21 ], [ %13, %12 ]
  %27 = add nuw i32 %14, 1
  %28 = icmp eq i32 %27, %7
  br i1 %28, label %29, label %12, !llvm.loop !72

29:                                               ; preds = %25, %2
  %30 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %0)
  ret void
}

declare i32 @sbitmap_last_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_ebitmap(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @dump_ebitmap(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ebitmap_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.1) #14
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %5
  tail call void @ebitmap_clear(ptr noundef %0)
  br label %147

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void @sbitmap_a_and_b(ptr noundef %17, ptr noundef %17, ptr noundef %19) #14
  %20 = load ptr, ptr %16, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !56
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %20, i64 0, i32 3
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = load i64, ptr %23, align 8, !tbaa !58
  br label %27

27:                                               ; preds = %15, %25
  %28 = phi i64 [ %26, %25 ], [ 0, %15 ]
  %29 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %30 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  br label %31

31:                                               ; preds = %142, %27
  %32 = phi i32 [ 0, %27 ], [ %73, %142 ]
  %33 = phi i32 [ 0, %27 ], [ %145, %142 ]
  %34 = phi i64 [ %28, %27 ], [ %144, %142 ]
  %35 = phi i32 [ undef, %27 ], [ %76, %142 ]
  %36 = phi i32 [ 0, %27 ], [ %78, %142 ]
  %37 = phi i32 [ 0, %27 ], [ %143, %142 ]
  %38 = icmp eq i64 %34, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = add i32 %32, 1
  %41 = tail call i32 @llvm.umax.i32(i32 %22, i32 %40)
  %42 = add i32 %32, 1
  %43 = icmp ult i32 %42, %22
  br i1 %43, label %56, label %71

44:                                               ; preds = %56
  %45 = shl i32 %57, 6
  br label %46

46:                                               ; preds = %44, %31
  %47 = phi i32 [ %32, %31 ], [ %57, %44 ]
  %48 = phi i32 [ %33, %31 ], [ %45, %44 ]
  %49 = phi i64 [ %34, %31 ], [ %60, %44 ]
  %50 = phi i1 [ %38, %31 ], [ %61, %44 ]
  %51 = and i64 %49, 1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %62, label %71

53:                                               ; preds = %56
  %54 = add i32 %57, 1
  %55 = icmp ult i32 %54, %22
  br i1 %55, label %56, label %69, !llvm.loop !62

56:                                               ; preds = %39, %53
  %57 = phi i32 [ %54, %53 ], [ %42, %39 ]
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, ptr %23, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !58
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %53, label %44, !llvm.loop !62

62:                                               ; preds = %46, %62
  %63 = phi i64 [ %66, %62 ], [ %49, %46 ]
  %64 = phi i32 [ %65, %62 ], [ %48, %46 ]
  %65 = add i32 %64, 1
  %66 = lshr exact i64 %63, 1
  %67 = and i64 %63, 2
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %62, label %71, !llvm.loop !63

69:                                               ; preds = %53
  %70 = shl i32 %57, 6
  br label %71

71:                                               ; preds = %62, %69, %39, %46
  %72 = phi i1 [ %50, %46 ], [ %38, %39 ], [ %61, %69 ], [ %50, %62 ]
  %73 = phi i32 [ %47, %46 ], [ %41, %39 ], [ %41, %69 ], [ %47, %62 ]
  %74 = phi i32 [ %48, %46 ], [ %33, %39 ], [ %70, %69 ], [ %65, %62 ]
  %75 = phi i64 [ %49, %46 ], [ %34, %39 ], [ %60, %69 ], [ %66, %62 ]
  %76 = phi i32 [ %48, %46 ], [ %35, %39 ], [ %35, %69 ], [ %65, %62 ]
  br i1 %72, label %146, label %77

77:                                               ; preds = %71
  %78 = add i32 %36, 1
  %79 = load i32, ptr %1, align 8, !tbaa !66
  %80 = icmp ugt i32 %79, %36
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %82

82:                                               ; preds = %77, %81
  %83 = load ptr, ptr %29, align 8, !tbaa !60
  %84 = zext i32 %36 to i64
  %85 = getelementptr inbounds i64, ptr %83, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !58
  %87 = load i32, ptr %0, align 8, !tbaa !66
  %88 = icmp ugt i32 %87, %36
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %90

90:                                               ; preds = %82, %89
  %91 = load ptr, ptr %30, align 8, !tbaa !60
  %92 = zext i32 %36 to i64
  %93 = getelementptr inbounds i64, ptr %91, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !58
  %95 = and i64 %94, %86
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %90
  %98 = add i32 %37, 1
  %99 = load i32, ptr %0, align 8, !tbaa !66
  %100 = icmp ugt i32 %99, %37
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = icmp ult i32 %99, %98
  br i1 %102, label %104, label %103

103:                                              ; preds = %101
  store i32 %98, ptr %0, align 8, !tbaa !66
  br label %110

104:                                              ; preds = %101
  %105 = lshr i32 %98, 2
  %106 = add i32 %105, %98
  store i32 %106, ptr %0, align 8, !tbaa !66
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 3
  %109 = tail call ptr @xrealloc(ptr noundef %91, i64 noundef %108) #14
  store ptr %109, ptr %30, align 8, !tbaa !60
  br label %110

110:                                              ; preds = %97, %103, %104
  %111 = load ptr, ptr %30, align 8, !tbaa !60
  %112 = zext i32 %37 to i64
  %113 = getelementptr inbounds i64, ptr %111, i64 %112
  store i64 %95, ptr %113, align 8, !tbaa !58
  br label %142

114:                                              ; preds = %90
  %115 = load ptr, ptr %16, align 8, !tbaa !54
  %116 = load ptr, ptr %115, align 8, !tbaa !69
  %117 = icmp eq ptr %116, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %114
  %119 = lshr i32 %76, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds %struct.simple_bitmap_def, ptr %115, i64 0, i32 3, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !58
  %123 = and i32 %76, 63
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %126 = and i64 %122, %125
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %118
  %129 = getelementptr inbounds i8, ptr %116, i64 %120
  %130 = load i8, ptr %129, align 1, !tbaa !46
  %131 = add i8 %130, -1
  store i8 %131, ptr %129, align 1, !tbaa !46
  br label %132

132:                                              ; preds = %114, %118, %128
  %133 = and i32 %76, 63
  %134 = zext nneg i32 %133 to i64
  %135 = shl nuw i64 1, %134
  %136 = xor i64 %135, -1
  %137 = lshr i32 %76, 6
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds %struct.simple_bitmap_def, ptr %115, i64 0, i32 3, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !58
  %141 = and i64 %140, %136
  store i64 %141, ptr %139, align 8, !tbaa !58
  br label %142

142:                                              ; preds = %132, %110
  %143 = phi i32 [ %98, %110 ], [ %37, %132 ]
  %144 = lshr i64 %75, 1
  %145 = add i32 %74, 1
  br label %31, !llvm.loop !73

146:                                              ; preds = %71
  store i32 %37, ptr %11, align 8, !tbaa !59
  br label %147

147:                                              ; preds = %146, %14
  ret void
}

declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ebitmap_and(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 !prof !34 {
  %4 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %3
  tail call void @ebitmap_clear(ptr noundef %0)
  br label %178

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !61
  %24 = tail call i32 @llvm.umin.i32(i32 %19, i32 %23)
  %25 = tail call ptr @sbitmap_resize(ptr noundef %15, i32 noundef %24, i32 noundef 0) #14
  store ptr %25, ptr %14, align 8, !tbaa !54
  %26 = load ptr, ptr %16, align 8, !tbaa !54
  %27 = load ptr, ptr %20, align 8, !tbaa !54
  tail call void @sbitmap_a_and_b(ptr noundef %25, ptr noundef %26, ptr noundef %27) #14
  %28 = load ptr, ptr %14, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !56
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %28, i64 0, i32 3
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %13
  %34 = load i64, ptr %31, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %13, %33
  %36 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %37 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %38 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 4
  %39 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %40 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  br label %41

41:                                               ; preds = %170, %35
  %42 = phi i32 [ 0, %35 ], [ %84, %170 ]
  %43 = phi i32 [ 0, %35 ], [ %175, %170 ]
  %44 = phi i64 [ %36, %35 ], [ %174, %170 ]
  %45 = phi i32 [ undef, %35 ], [ %87, %170 ]
  %46 = phi i32 [ 0, %35 ], [ %171, %170 ]
  %47 = phi i32 [ 0, %35 ], [ %172, %170 ]
  %48 = phi i32 [ 0, %35 ], [ %173, %170 ]
  %49 = icmp eq i64 %44, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = add i32 %42, 1
  %52 = tail call i32 @llvm.umax.i32(i32 %30, i32 %51)
  %53 = add i32 %42, 1
  %54 = icmp ult i32 %53, %30
  br i1 %54, label %67, label %82

55:                                               ; preds = %67
  %56 = shl i32 %68, 6
  br label %57

57:                                               ; preds = %55, %41
  %58 = phi i32 [ %42, %41 ], [ %68, %55 ]
  %59 = phi i32 [ %43, %41 ], [ %56, %55 ]
  %60 = phi i64 [ %44, %41 ], [ %71, %55 ]
  %61 = phi i1 [ %49, %41 ], [ %72, %55 ]
  %62 = and i64 %60, 1
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %73, label %82

64:                                               ; preds = %67
  %65 = add i32 %68, 1
  %66 = icmp ult i32 %65, %30
  br i1 %66, label %67, label %80, !llvm.loop !62

67:                                               ; preds = %50, %64
  %68 = phi i32 [ %65, %64 ], [ %53, %50 ]
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, ptr %31, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !58
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %64, label %55, !llvm.loop !62

73:                                               ; preds = %57, %73
  %74 = phi i64 [ %77, %73 ], [ %60, %57 ]
  %75 = phi i32 [ %76, %73 ], [ %59, %57 ]
  %76 = add i32 %75, 1
  %77 = lshr exact i64 %74, 1
  %78 = and i64 %74, 2
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %73, label %82, !llvm.loop !63

80:                                               ; preds = %64
  %81 = shl i32 %68, 6
  br label %82

82:                                               ; preds = %73, %80, %50, %57
  %83 = phi i1 [ %61, %57 ], [ %49, %50 ], [ %72, %80 ], [ %61, %73 ]
  %84 = phi i32 [ %58, %57 ], [ %52, %50 ], [ %52, %80 ], [ %58, %73 ]
  %85 = phi i32 [ %59, %57 ], [ %43, %50 ], [ %81, %80 ], [ %76, %73 ]
  %86 = phi i64 [ %60, %57 ], [ %44, %50 ], [ %71, %80 ], [ %77, %73 ]
  %87 = phi i32 [ %59, %57 ], [ %45, %50 ], [ %45, %80 ], [ %76, %73 ]
  br i1 %83, label %176, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %16, align 8, !tbaa !54
  %90 = lshr i32 %87, 6
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds %struct.simple_bitmap_def, ptr %89, i64 0, i32 3, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !58
  %94 = and i32 %87, 63
  %95 = zext nneg i32 %94 to i64
  %96 = lshr i64 %93, %95
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 1
  %99 = load ptr, ptr %20, align 8, !tbaa !54
  %100 = getelementptr inbounds %struct.simple_bitmap_def, ptr %99, i64 0, i32 3, i64 %91
  %101 = load i64, ptr %100, align 8, !tbaa !58
  %102 = icmp ne i8 %98, 0
  %103 = shl nuw i64 1, %95
  %104 = and i64 %101, %103
  %105 = icmp ne i64 %104, 0
  %106 = select i1 %102, i1 %105, i1 false
  br i1 %106, label %107, label %164

107:                                              ; preds = %88
  %108 = add i32 %47, 1
  %109 = load i32, ptr %1, align 8, !tbaa !66
  %110 = icmp ugt i32 %109, %47
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %112

112:                                              ; preds = %107, %111
  %113 = load ptr, ptr %37, align 8, !tbaa !60
  %114 = zext i32 %47 to i64
  %115 = getelementptr inbounds i64, ptr %113, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !58
  %117 = add i32 %46, 1
  %118 = load i32, ptr %2, align 8, !tbaa !66
  %119 = icmp ugt i32 %118, %46
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %121

121:                                              ; preds = %112, %120
  %122 = load ptr, ptr %38, align 8, !tbaa !60
  %123 = zext i32 %46 to i64
  %124 = getelementptr inbounds i64, ptr %122, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !58
  %126 = and i64 %125, %116
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %121
  %129 = add i32 %48, 1
  %130 = load i32, ptr %0, align 8, !tbaa !66
  %131 = icmp ugt i32 %130, %48
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = icmp ult i32 %130, %129
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  store i32 %129, ptr %0, align 8, !tbaa !66
  br label %142

135:                                              ; preds = %132
  %136 = lshr i32 %129, 2
  %137 = add i32 %136, %129
  store i32 %137, ptr %0, align 8, !tbaa !66
  %138 = load ptr, ptr %39, align 8, !tbaa !60
  %139 = zext i32 %137 to i64
  %140 = shl nuw nsw i64 %139, 3
  %141 = tail call ptr @xrealloc(ptr noundef %138, i64 noundef %140) #14
  store ptr %141, ptr %39, align 8, !tbaa !60
  br label %142

142:                                              ; preds = %128, %134, %135
  %143 = load ptr, ptr %40, align 8, !tbaa !60
  %144 = zext i32 %48 to i64
  %145 = getelementptr inbounds i64, ptr %143, i64 %144
  store i64 %126, ptr %145, align 8, !tbaa !58
  br label %170

146:                                              ; preds = %121
  %147 = load ptr, ptr %14, align 8, !tbaa !54
  %148 = load ptr, ptr %147, align 8, !tbaa !69
  %149 = icmp eq ptr %148, null
  br i1 %149, label %159, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.simple_bitmap_def, ptr %147, i64 0, i32 3, i64 %91
  %152 = load i64, ptr %151, align 8, !tbaa !58
  %153 = and i64 %152, %103
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds i8, ptr %148, i64 %91
  %157 = load i8, ptr %156, align 1, !tbaa !46
  %158 = add i8 %157, -1
  store i8 %158, ptr %156, align 1, !tbaa !46
  br label %159

159:                                              ; preds = %146, %150, %155
  %160 = xor i64 %103, -1
  %161 = getelementptr inbounds %struct.simple_bitmap_def, ptr %147, i64 0, i32 3, i64 %91
  %162 = load i64, ptr %161, align 8, !tbaa !58
  %163 = and i64 %162, %160
  store i64 %163, ptr %161, align 8, !tbaa !58
  br label %170

164:                                              ; preds = %88
  %165 = icmp eq i8 %98, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = add i32 %47, 1
  br label %170

168:                                              ; preds = %164
  %169 = add i32 %46, 1
  br label %170

170:                                              ; preds = %142, %159, %166, %168
  %171 = phi i32 [ %46, %166 ], [ %169, %168 ], [ %117, %159 ], [ %117, %142 ]
  %172 = phi i32 [ %167, %166 ], [ %47, %168 ], [ %108, %159 ], [ %108, %142 ]
  %173 = phi i32 [ %48, %166 ], [ %48, %168 ], [ %48, %159 ], [ %129, %142 ]
  %174 = lshr i64 %86, 1
  %175 = add i32 %85, 1
  br label %41, !llvm.loop !74

176:                                              ; preds = %82
  %177 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %48, ptr %177, align 8, !tbaa !59
  br label %178

178:                                              ; preds = %176, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ebitmap_ior_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !67
  %12 = icmp eq ptr %0, %1
  br i1 %12, label %251, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !59
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @ebitmap_copy(ptr noundef %0, ptr noundef %1)
  br label %251

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %251, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @llvm.umax.i32(i32 %10, i32 %6)
  %28 = tail call ptr @sbitmap_alloc(i32 noundef %27) #14
  tail call void @sbitmap_zero(ptr noundef %28) #14
  %29 = icmp eq i32 %10, %6
  %30 = load ptr, ptr %3, align 8, !tbaa !54
  br i1 %29, label %41, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @sbitmap_resize(ptr noundef %30, i32 noundef %27, i32 noundef 0) #14
  store ptr %32, ptr %3, align 8, !tbaa !54
  %33 = icmp ult i32 %10, %6
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ %32, %31 ]
  %38 = phi ptr [ %3, %34 ], [ %7, %31 ]
  %39 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !56
  tail call void @sbitmap_copy_n(ptr noundef %28, ptr noundef %37, i32 noundef %40) #14
  br label %41

41:                                               ; preds = %36, %26
  %42 = phi ptr [ %7, %26 ], [ %38, %36 ]
  %43 = phi ptr [ %30, %26 ], [ %28, %36 ]
  %44 = load ptr, ptr %42, align 8, !tbaa !54
  tail call void @sbitmap_a_or_b(ptr noundef %28, ptr noundef %43, ptr noundef %44) #14
  %45 = load i32, ptr %23, align 8, !tbaa !59
  %46 = load i32, ptr %14, align 8, !tbaa !59
  %47 = add i32 %46, %45
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  %50 = tail call ptr @xmalloc(i64 noundef %49) #14
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %28, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !56
  %53 = getelementptr inbounds %struct.simple_bitmap_def, ptr %28, i64 0, i32 3
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %41
  %56 = load i64, ptr %53, align 8, !tbaa !58
  br label %57

57:                                               ; preds = %41, %55
  %58 = phi i64 [ %56, %55 ], [ 0, %41 ]
  %59 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %60 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %61 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %62 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  br label %63

63:                                               ; preds = %237, %57
  %64 = phi i32 [ 0, %57 ], [ %107, %237 ]
  %65 = phi i32 [ 0, %57 ], [ %243, %237 ]
  %66 = phi i64 [ %58, %57 ], [ %242, %237 ]
  %67 = phi i32 [ undef, %57 ], [ %110, %237 ]
  %68 = phi i8 [ 0, %57 ], [ %238, %237 ]
  %69 = phi i32 [ 0, %57 ], [ %239, %237 ]
  %70 = phi i32 [ 0, %57 ], [ %240, %237 ]
  %71 = phi i32 [ 0, %57 ], [ %241, %237 ]
  %72 = icmp eq i64 %66, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = add i32 %64, 1
  %75 = tail call i32 @llvm.umax.i32(i32 %52, i32 %74)
  %76 = add i32 %64, 1
  %77 = icmp ult i32 %76, %52
  br i1 %77, label %90, label %105

78:                                               ; preds = %90
  %79 = shl i32 %91, 6
  br label %80

80:                                               ; preds = %78, %63
  %81 = phi i32 [ %64, %63 ], [ %91, %78 ]
  %82 = phi i32 [ %65, %63 ], [ %79, %78 ]
  %83 = phi i64 [ %66, %63 ], [ %94, %78 ]
  %84 = phi i1 [ %72, %63 ], [ %95, %78 ]
  %85 = and i64 %83, 1
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %105

87:                                               ; preds = %90
  %88 = add i32 %91, 1
  %89 = icmp ult i32 %88, %52
  br i1 %89, label %90, label %103, !llvm.loop !62

90:                                               ; preds = %73, %87
  %91 = phi i32 [ %88, %87 ], [ %76, %73 ]
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, ptr %53, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !58
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %87, label %78, !llvm.loop !62

96:                                               ; preds = %80, %96
  %97 = phi i64 [ %100, %96 ], [ %83, %80 ]
  %98 = phi i32 [ %99, %96 ], [ %82, %80 ]
  %99 = add i32 %98, 1
  %100 = lshr exact i64 %97, 1
  %101 = and i64 %97, 2
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %96, label %105, !llvm.loop !63

103:                                              ; preds = %87
  %104 = shl i32 %91, 6
  br label %105

105:                                              ; preds = %96, %103, %73, %80
  %106 = phi i1 [ %84, %80 ], [ %72, %73 ], [ %95, %103 ], [ %84, %96 ]
  %107 = phi i32 [ %81, %80 ], [ %75, %73 ], [ %75, %103 ], [ %81, %96 ]
  %108 = phi i32 [ %82, %80 ], [ %65, %73 ], [ %104, %103 ], [ %99, %96 ]
  %109 = phi i64 [ %83, %80 ], [ %66, %73 ], [ %94, %103 ], [ %100, %96 ]
  %110 = phi i32 [ %82, %80 ], [ %67, %73 ], [ %67, %103 ], [ %99, %96 ]
  br i1 %106, label %244, label %111

111:                                              ; preds = %105
  %112 = load ptr, ptr %3, align 8, !tbaa !54
  %113 = getelementptr inbounds %struct.simple_bitmap_def, ptr %112, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !61
  %115 = icmp ult i32 %110, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = lshr i32 %110, 6
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds %struct.simple_bitmap_def, ptr %112, i64 0, i32 3, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !58
  %121 = and i32 %110, 63
  %122 = zext nneg i32 %121 to i64
  %123 = shl nuw i64 1, %122
  %124 = and i64 %120, %123
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %116, %111
  %127 = phi i1 [ false, %111 ], [ %125, %116 ]
  %128 = load ptr, ptr %7, align 8, !tbaa !54
  %129 = getelementptr inbounds %struct.simple_bitmap_def, ptr %128, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !61
  %131 = icmp ult i32 %110, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = lshr i32 %110, 6
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds %struct.simple_bitmap_def, ptr %128, i64 0, i32 3, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !58
  %137 = and i32 %110, 63
  %138 = zext nneg i32 %137 to i64
  %139 = shl nuw i64 1, %138
  %140 = and i64 %136, %139
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %132, %126
  %143 = phi i1 [ false, %126 ], [ %141, %132 ]
  %144 = select i1 %127, i1 %143, i1 false
  br i1 %144, label %145, label %180

145:                                              ; preds = %142
  %146 = add i32 %69, 1
  %147 = load i32, ptr %1, align 8, !tbaa !66
  %148 = icmp ugt i32 %147, %69
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %150

150:                                              ; preds = %145, %149
  %151 = load ptr, ptr %61, align 8, !tbaa !60
  %152 = zext i32 %69 to i64
  %153 = getelementptr inbounds i64, ptr %151, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !58
  %155 = load i32, ptr %0, align 8, !tbaa !66
  %156 = icmp ugt i32 %155, %70
  br i1 %156, label %158, label %157

157:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %158

158:                                              ; preds = %150, %157
  %159 = load ptr, ptr %62, align 8, !tbaa !60
  %160 = zext i32 %70 to i64
  %161 = getelementptr inbounds i64, ptr %159, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !58
  %163 = or i64 %162, %154
  %164 = icmp eq i8 %68, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load i32, ptr %0, align 8, !tbaa !66
  %167 = icmp ugt i32 %166, %70
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %169

169:                                              ; preds = %165, %168
  %170 = load ptr, ptr %62, align 8, !tbaa !60
  %171 = getelementptr inbounds i64, ptr %170, i64 %160
  %172 = load i64, ptr %171, align 8, !tbaa !58
  %173 = icmp ne i64 %163, %172
  %174 = zext i1 %173 to i8
  br label %175

175:                                              ; preds = %169, %158
  %176 = phi i8 [ 1, %158 ], [ %174, %169 ]
  %177 = add i32 %70, 1
  %178 = zext i32 %71 to i64
  %179 = getelementptr inbounds i64, ptr %50, i64 %178
  store i64 %163, ptr %179, align 8, !tbaa !58
  br label %237

180:                                              ; preds = %142
  br i1 %127, label %181, label %193

181:                                              ; preds = %180
  %182 = add i32 %70, 1
  %183 = load i32, ptr %0, align 8, !tbaa !66
  %184 = icmp ugt i32 %183, %70
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %186

186:                                              ; preds = %181, %185
  %187 = load ptr, ptr %60, align 8, !tbaa !60
  %188 = zext i32 %70 to i64
  %189 = getelementptr inbounds i64, ptr %187, i64 %188
  %190 = load i64, ptr %189, align 8, !tbaa !58
  %191 = zext i32 %71 to i64
  %192 = getelementptr inbounds i64, ptr %50, i64 %191
  store i64 %190, ptr %192, align 8, !tbaa !58
  br label %237

193:                                              ; preds = %180
  %194 = add i32 %69, 1
  %195 = load i32, ptr %1, align 8, !tbaa !66
  %196 = icmp ugt i32 %195, %69
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %198

198:                                              ; preds = %193, %197
  %199 = load ptr, ptr %59, align 8, !tbaa !60
  %200 = zext i32 %69 to i64
  %201 = getelementptr inbounds i64, ptr %199, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !58
  %203 = zext i32 %71 to i64
  %204 = getelementptr inbounds i64, ptr %50, i64 %203
  store i64 %202, ptr %204, align 8, !tbaa !58
  %205 = load ptr, ptr %3, align 8, !tbaa !54
  %206 = getelementptr inbounds %struct.simple_bitmap_def, ptr %205, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !61
  %208 = icmp ult i32 %110, %207
  br i1 %208, label %210, label %209

209:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 630, ptr noundef nonnull @.str.1) #14
  br label %210

210:                                              ; preds = %198, %209
  %211 = load ptr, ptr %3, align 8, !tbaa !54
  %212 = load ptr, ptr %211, align 8, !tbaa !69
  %213 = icmp eq ptr %212, null
  br i1 %213, label %228, label %214

214:                                              ; preds = %210
  %215 = lshr i32 %110, 6
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds %struct.simple_bitmap_def, ptr %211, i64 0, i32 3, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !58
  %219 = and i32 %110, 63
  %220 = zext nneg i32 %219 to i64
  %221 = shl nuw i64 1, %220
  %222 = and i64 %218, %221
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %214
  %225 = getelementptr inbounds i8, ptr %212, i64 %216
  %226 = load i8, ptr %225, align 1, !tbaa !46
  %227 = add i8 %226, 1
  store i8 %227, ptr %225, align 1, !tbaa !46
  br label %228

228:                                              ; preds = %210, %214, %224
  %229 = and i32 %110, 63
  %230 = zext nneg i32 %229 to i64
  %231 = shl nuw i64 1, %230
  %232 = lshr i32 %110, 6
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds %struct.simple_bitmap_def, ptr %211, i64 0, i32 3, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !58
  %236 = or i64 %235, %231
  store i64 %236, ptr %234, align 8, !tbaa !58
  br label %237

237:                                              ; preds = %186, %228, %175
  %238 = phi i8 [ %176, %175 ], [ %68, %186 ], [ 1, %228 ]
  %239 = phi i32 [ %146, %175 ], [ %69, %186 ], [ %194, %228 ]
  %240 = phi i32 [ %177, %175 ], [ %182, %186 ], [ %70, %228 ]
  %241 = add i32 %71, 1
  %242 = lshr i64 %109, 1
  %243 = add i32 %108, 1
  br label %63, !llvm.loop !75

244:                                              ; preds = %105
  %245 = load ptr, ptr %28, align 8, !tbaa !69
  tail call void @free(ptr noundef %245)
  tail call void @free(ptr noundef %28)
  %246 = icmp eq i8 %68, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  store i32 %71, ptr %14, align 8, !tbaa !59
  %248 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %249 = load ptr, ptr %248, align 8, !tbaa !60
  tail call void @free(ptr noundef %249)
  store ptr %50, ptr %248, align 8, !tbaa !60
  store i32 %47, ptr %0, align 8, !tbaa !66
  br label %251

250:                                              ; preds = %244
  tail call void @free(ptr noundef %50)
  br label %251

251:                                              ; preds = %247, %250, %22, %2, %21
  %252 = phi i8 [ 1, %21 ], [ 0, %2 ], [ 0, %22 ], [ %68, %250 ], [ %68, %247 ]
  ret i8 %252
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_copy_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ebitmap_ior(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 !prof !34 {
  %4 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !67
  %13 = tail call i32 @llvm.umax.i32(i32 %7, i32 %11)
  %14 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %13) #14
  tail call void @sbitmap_zero(ptr noundef %14) #14
  %15 = icmp eq i32 %7, %11
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !tbaa !54
  br label %28

18:                                               ; preds = %3
  %19 = icmp ult i32 %7, %11
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %8, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !56
  tail call void @sbitmap_copy_n(ptr noundef %14, ptr noundef %21, i32 noundef %23) #14
  br label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.simple_bitmap_def, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !56
  tail call void @sbitmap_copy_n(ptr noundef %14, ptr noundef %25, i32 noundef %27) #14
  br label %28

28:                                               ; preds = %20, %24, %16
  %29 = phi ptr [ %4, %20 ], [ %8, %24 ], [ %8, %16 ]
  %30 = phi ptr [ %14, %20 ], [ %14, %24 ], [ %17, %16 ]
  %31 = load ptr, ptr %29, align 8, !tbaa !54
  tail call void @sbitmap_a_or_b(ptr noundef %14, ptr noundef %30, ptr noundef %31) #14
  %32 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !59
  %36 = add i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = tail call ptr @xmalloc(i64 noundef %38) #14
  %40 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !56
  %42 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %28
  %45 = load i64, ptr %42, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %28, %44
  %47 = phi i64 [ %45, %44 ], [ 0, %28 ]
  %48 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 4
  %49 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %50 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %51 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 4
  %52 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %53 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  br label %54

54:                                               ; preds = %214, %46
  %55 = phi i32 [ 0, %46 ], [ %98, %214 ]
  %56 = phi i32 [ 0, %46 ], [ %217, %214 ]
  %57 = phi i64 [ %47, %46 ], [ %216, %214 ]
  %58 = phi i32 [ undef, %46 ], [ %101, %214 ]
  %59 = phi i8 [ 0, %46 ], [ %215, %214 ]
  %60 = phi i32 [ 0, %46 ], [ %179, %214 ]
  %61 = phi i32 [ 0, %46 ], [ %180, %214 ]
  %62 = phi i32 [ 0, %46 ], [ %183, %214 ]
  %63 = icmp eq i64 %57, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = add i32 %55, 1
  %66 = tail call i32 @llvm.umax.i32(i32 %41, i32 %65)
  %67 = add i32 %55, 1
  %68 = icmp ult i32 %67, %41
  br i1 %68, label %81, label %96

69:                                               ; preds = %81
  %70 = shl i32 %82, 6
  br label %71

71:                                               ; preds = %69, %54
  %72 = phi i32 [ %55, %54 ], [ %82, %69 ]
  %73 = phi i32 [ %56, %54 ], [ %70, %69 ]
  %74 = phi i64 [ %57, %54 ], [ %85, %69 ]
  %75 = phi i1 [ %63, %54 ], [ %86, %69 ]
  %76 = and i64 %74, 1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %87, label %96

78:                                               ; preds = %81
  %79 = add i32 %82, 1
  %80 = icmp ult i32 %79, %41
  br i1 %80, label %81, label %94, !llvm.loop !62

81:                                               ; preds = %64, %78
  %82 = phi i32 [ %79, %78 ], [ %67, %64 ]
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, ptr %42, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !58
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %78, label %69, !llvm.loop !62

87:                                               ; preds = %71, %87
  %88 = phi i64 [ %91, %87 ], [ %74, %71 ]
  %89 = phi i32 [ %90, %87 ], [ %73, %71 ]
  %90 = add i32 %89, 1
  %91 = lshr exact i64 %88, 1
  %92 = and i64 %88, 2
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %87, label %96, !llvm.loop !63

94:                                               ; preds = %78
  %95 = shl i32 %82, 6
  br label %96

96:                                               ; preds = %87, %94, %64, %71
  %97 = phi i1 [ %75, %71 ], [ %63, %64 ], [ %86, %94 ], [ %75, %87 ]
  %98 = phi i32 [ %72, %71 ], [ %66, %64 ], [ %66, %94 ], [ %72, %87 ]
  %99 = phi i32 [ %73, %71 ], [ %56, %64 ], [ %95, %94 ], [ %90, %87 ]
  %100 = phi i64 [ %74, %71 ], [ %57, %64 ], [ %85, %94 ], [ %91, %87 ]
  %101 = phi i32 [ %73, %71 ], [ %58, %64 ], [ %58, %94 ], [ %90, %87 ]
  br i1 %97, label %218, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr %4, align 8, !tbaa !54
  %104 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !61
  %106 = icmp ult i32 %101, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = lshr i32 %101, 6
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 3, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !58
  %112 = and i32 %101, 63
  %113 = zext nneg i32 %112 to i64
  %114 = shl nuw i64 1, %113
  %115 = and i64 %111, %114
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %107, %102
  %118 = phi i1 [ false, %102 ], [ %116, %107 ]
  %119 = load ptr, ptr %8, align 8, !tbaa !54
  %120 = getelementptr inbounds %struct.simple_bitmap_def, ptr %119, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !61
  %122 = icmp ult i32 %101, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = lshr i32 %101, 6
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds %struct.simple_bitmap_def, ptr %119, i64 0, i32 3, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !58
  %128 = and i32 %101, 63
  %129 = zext nneg i32 %128 to i64
  %130 = shl nuw i64 1, %129
  %131 = and i64 %127, %130
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %123, %117
  %134 = phi i1 [ false, %117 ], [ %132, %123 ]
  %135 = select i1 %118, i1 %134, i1 false
  br i1 %135, label %136, label %156

136:                                              ; preds = %133
  %137 = add i32 %61, 1
  %138 = load i32, ptr %1, align 8, !tbaa !66
  %139 = icmp ugt i32 %138, %61
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %141

141:                                              ; preds = %136, %140
  %142 = load ptr, ptr %50, align 8, !tbaa !60
  %143 = zext i32 %61 to i64
  %144 = getelementptr inbounds i64, ptr %142, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !58
  %146 = add i32 %60, 1
  %147 = load i32, ptr %2, align 8, !tbaa !66
  %148 = icmp ugt i32 %147, %60
  br i1 %148, label %150, label %149

149:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %150

150:                                              ; preds = %141, %149
  %151 = load ptr, ptr %51, align 8, !tbaa !60
  %152 = zext i32 %60 to i64
  %153 = getelementptr inbounds i64, ptr %151, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !58
  %155 = or i64 %154, %145
  br label %177

156:                                              ; preds = %133
  br i1 %118, label %157, label %167

157:                                              ; preds = %156
  %158 = add i32 %61, 1
  %159 = load i32, ptr %1, align 8, !tbaa !66
  %160 = icmp ugt i32 %159, %61
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %162

162:                                              ; preds = %157, %161
  %163 = load ptr, ptr %49, align 8, !tbaa !60
  %164 = zext i32 %61 to i64
  %165 = getelementptr inbounds i64, ptr %163, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !58
  br label %177

167:                                              ; preds = %156
  %168 = add i32 %60, 1
  %169 = load i32, ptr %2, align 8, !tbaa !66
  %170 = icmp ugt i32 %169, %60
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %172

172:                                              ; preds = %167, %171
  %173 = load ptr, ptr %48, align 8, !tbaa !60
  %174 = zext i32 %60 to i64
  %175 = getelementptr inbounds i64, ptr %173, i64 %174
  %176 = load i64, ptr %175, align 8, !tbaa !58
  br label %177

177:                                              ; preds = %162, %172, %150
  %178 = phi i64 [ %166, %162 ], [ %176, %172 ], [ %155, %150 ]
  %179 = phi i32 [ %60, %162 ], [ %168, %172 ], [ %146, %150 ]
  %180 = phi i32 [ %158, %162 ], [ %61, %172 ], [ %137, %150 ]
  %181 = zext i32 %62 to i64
  %182 = getelementptr inbounds i64, ptr %39, i64 %181
  store i64 %178, ptr %182, align 8, !tbaa !58
  %183 = add i32 %62, 1
  %184 = load ptr, ptr %52, align 8, !tbaa !54
  %185 = getelementptr inbounds %struct.simple_bitmap_def, ptr %184, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !61
  %187 = icmp ult i32 %101, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %177
  %189 = lshr i32 %101, 6
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds %struct.simple_bitmap_def, ptr %184, i64 0, i32 3, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !58
  %193 = and i32 %101, 63
  %194 = zext nneg i32 %193 to i64
  %195 = shl nuw i64 1, %194
  %196 = and i64 %192, %195
  %197 = icmp ne i64 %196, 0
  %198 = icmp eq i8 %59, 0
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %200, label %214

200:                                              ; preds = %188
  %201 = zext i32 %101 to i64
  %202 = tail call i64 @sbitmap_popcount(ptr noundef %184, i64 noundef %201) #14
  %203 = trunc i64 %202 to i32
  %204 = load i32, ptr %0, align 8, !tbaa !66
  %205 = icmp ugt i32 %204, %203
  br i1 %205, label %207, label %206

206:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %207

207:                                              ; preds = %200, %206
  %208 = load ptr, ptr %53, align 8, !tbaa !60
  %209 = and i64 %202, 4294967295
  %210 = getelementptr inbounds i64, ptr %208, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !58
  %212 = icmp ne i64 %211, %178
  %213 = zext i1 %212 to i8
  br label %214

214:                                              ; preds = %177, %188, %207
  %215 = phi i8 [ %213, %207 ], [ 1, %188 ], [ 1, %177 ]
  %216 = lshr i64 %100, 1
  %217 = add i32 %99, 1
  br label %54, !llvm.loop !76

218:                                              ; preds = %96
  %219 = icmp eq i8 %59, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !54
  %223 = load ptr, ptr %222, align 8, !tbaa !69
  tail call void @free(ptr noundef %223)
  %224 = load ptr, ptr %221, align 8, !tbaa !54
  tail call void @free(ptr noundef %224)
  store ptr %14, ptr %221, align 8, !tbaa !54
  %225 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %62, ptr %225, align 8, !tbaa !59
  %226 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %227 = load ptr, ptr %226, align 8, !tbaa !60
  tail call void @free(ptr noundef %227)
  store ptr %39, ptr %226, align 8, !tbaa !60
  store i32 %36, ptr %0, align 8, !tbaa !66
  br label %230

228:                                              ; preds = %218
  %229 = load ptr, ptr %14, align 8, !tbaa !69
  tail call void @free(ptr noundef %229)
  tail call void @free(ptr noundef %14)
  tail call void @free(ptr noundef %39)
  br label %230

230:                                              ; preds = %228, %220
  ret i8 %59
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ebitmap_and_compl_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.1) #14
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %168, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds %struct.simple_bitmap_def, ptr %12, i64 0, i32 3
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load i64, ptr %15, align 8, !tbaa !58
  br label %19

19:                                               ; preds = %10, %17
  %20 = phi i64 [ %18, %17 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  br label %24

24:                                               ; preds = %160, %19
  %25 = phi i32 [ 0, %19 ], [ %165, %160 ]
  %26 = phi i32 [ 0, %19 ], [ %68, %160 ]
  %27 = phi i64 [ %20, %19 ], [ %164, %160 ]
  %28 = phi i32 [ undef, %19 ], [ %70, %160 ]
  %29 = phi i32 [ 0, %19 ], [ %163, %160 ]
  %30 = phi i32 [ 0, %19 ], [ %161, %160 ]
  %31 = phi i8 [ 0, %19 ], [ %162, %160 ]
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = add i32 %26, 1
  %35 = tail call i32 @llvm.umax.i32(i32 %14, i32 %34)
  %36 = add i32 %26, 1
  %37 = icmp ult i32 %36, %14
  br i1 %37, label %50, label %65

38:                                               ; preds = %50
  %39 = shl i32 %51, 6
  br label %40

40:                                               ; preds = %38, %24
  %41 = phi i32 [ %25, %24 ], [ %39, %38 ]
  %42 = phi i32 [ %26, %24 ], [ %51, %38 ]
  %43 = phi i64 [ %27, %24 ], [ %54, %38 ]
  %44 = phi i1 [ %32, %24 ], [ %55, %38 ]
  %45 = and i64 %43, 1
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %65

47:                                               ; preds = %50
  %48 = add i32 %51, 1
  %49 = icmp ult i32 %48, %14
  br i1 %49, label %50, label %63, !llvm.loop !62

50:                                               ; preds = %33, %47
  %51 = phi i32 [ %48, %47 ], [ %36, %33 ]
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %15, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !58
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %47, label %38, !llvm.loop !62

56:                                               ; preds = %40, %56
  %57 = phi i64 [ %60, %56 ], [ %43, %40 ]
  %58 = phi i32 [ %59, %56 ], [ %41, %40 ]
  %59 = add i32 %58, 1
  %60 = lshr exact i64 %57, 1
  %61 = and i64 %57, 2
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %56, label %65, !llvm.loop !63

63:                                               ; preds = %47
  %64 = shl i32 %51, 6
  br label %65

65:                                               ; preds = %56, %63, %33, %40
  %66 = phi i1 [ %44, %40 ], [ %32, %33 ], [ %55, %63 ], [ %44, %56 ]
  %67 = phi i32 [ %41, %40 ], [ %25, %33 ], [ %64, %63 ], [ %59, %56 ]
  %68 = phi i32 [ %42, %40 ], [ %35, %33 ], [ %35, %63 ], [ %42, %56 ]
  %69 = phi i64 [ %43, %40 ], [ %27, %33 ], [ %54, %63 ], [ %60, %56 ]
  %70 = phi i32 [ %41, %40 ], [ %28, %33 ], [ %28, %63 ], [ %59, %56 ]
  br i1 %66, label %166, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %21, align 8, !tbaa !54
  %73 = getelementptr inbounds %struct.simple_bitmap_def, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !61
  %75 = icmp ult i32 %70, %74
  br i1 %75, label %76, label %158

76:                                               ; preds = %71
  %77 = lshr i32 %70, 6
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds %struct.simple_bitmap_def, ptr %72, i64 0, i32 3, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !58
  %81 = and i32 %70, 63
  %82 = zext nneg i32 %81 to i64
  %83 = shl nuw i64 1, %82
  %84 = and i64 %80, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %158, label %86

86:                                               ; preds = %76
  %87 = zext i32 %70 to i64
  %88 = tail call i64 @sbitmap_popcount(ptr noundef %72, i64 noundef %87) #14
  %89 = trunc i64 %88 to i32
  %90 = load i32, ptr %0, align 8, !tbaa !66
  %91 = icmp ugt i32 %90, %29
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %93

93:                                               ; preds = %86, %92
  %94 = load ptr, ptr %22, align 8, !tbaa !60
  %95 = zext i32 %29 to i64
  %96 = getelementptr inbounds i64, ptr %94, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !58
  %98 = load i32, ptr %1, align 8, !tbaa !66
  %99 = icmp ugt i32 %98, %89
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %101

101:                                              ; preds = %93, %100
  %102 = load ptr, ptr %23, align 8, !tbaa !60
  %103 = and i64 %88, 4294967295
  %104 = getelementptr inbounds i64, ptr %102, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !58
  %106 = xor i64 %105, -1
  %107 = and i64 %97, %106
  %108 = icmp eq i8 %31, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load i32, ptr %0, align 8, !tbaa !66
  %111 = icmp ugt i32 %110, %29
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %113

113:                                              ; preds = %109, %112
  %114 = load ptr, ptr %22, align 8, !tbaa !60
  %115 = getelementptr inbounds i64, ptr %114, i64 %95
  %116 = load i64, ptr %115, align 8, !tbaa !58
  %117 = icmp ne i64 %116, %107
  %118 = zext i1 %117 to i8
  br label %119

119:                                              ; preds = %113, %101
  %120 = phi i8 [ 1, %101 ], [ %118, %113 ]
  %121 = icmp eq i64 %107, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %119
  %123 = add i32 %30, 1
  %124 = load i32, ptr %0, align 8, !tbaa !66
  %125 = icmp ugt i32 %124, %30
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  %127 = icmp ult i32 %124, %123
  br i1 %127, label %129, label %128

128:                                              ; preds = %126
  store i32 %123, ptr %0, align 8, !tbaa !66
  br label %136

129:                                              ; preds = %126
  %130 = lshr i32 %123, 2
  %131 = add i32 %130, %123
  store i32 %131, ptr %0, align 8, !tbaa !66
  %132 = load ptr, ptr %22, align 8, !tbaa !60
  %133 = zext i32 %131 to i64
  %134 = shl nuw nsw i64 %133, 3
  %135 = tail call ptr @xrealloc(ptr noundef %132, i64 noundef %134) #14
  store ptr %135, ptr %22, align 8, !tbaa !60
  br label %136

136:                                              ; preds = %122, %128, %129
  %137 = load ptr, ptr %22, align 8, !tbaa !60
  %138 = zext i32 %30 to i64
  %139 = getelementptr inbounds i64, ptr %137, i64 %138
  store i64 %107, ptr %139, align 8, !tbaa !58
  br label %160

140:                                              ; preds = %119
  %141 = load ptr, ptr %11, align 8, !tbaa !54
  %142 = load ptr, ptr %141, align 8, !tbaa !69
  %143 = icmp eq ptr %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.simple_bitmap_def, ptr %141, i64 0, i32 3, i64 %78
  %146 = load i64, ptr %145, align 8, !tbaa !58
  %147 = and i64 %146, %83
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds i8, ptr %142, i64 %78
  %151 = load i8, ptr %150, align 1, !tbaa !46
  %152 = add i8 %151, -1
  store i8 %152, ptr %150, align 1, !tbaa !46
  br label %153

153:                                              ; preds = %140, %144, %149
  %154 = xor i64 %83, -1
  %155 = getelementptr inbounds %struct.simple_bitmap_def, ptr %141, i64 0, i32 3, i64 %78
  %156 = load i64, ptr %155, align 8, !tbaa !58
  %157 = and i64 %156, %154
  store i64 %157, ptr %155, align 8, !tbaa !58
  br label %160

158:                                              ; preds = %71, %76
  %159 = add i32 %30, 1
  br label %160

160:                                              ; preds = %136, %153, %158
  %161 = phi i32 [ %159, %158 ], [ %123, %136 ], [ %30, %153 ]
  %162 = phi i8 [ %31, %158 ], [ %120, %136 ], [ %120, %153 ]
  %163 = add i32 %29, 1
  %164 = lshr i64 %69, 1
  %165 = add i32 %67, 1
  br label %24, !llvm.loop !77

166:                                              ; preds = %65
  %167 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %30, ptr %167, align 8, !tbaa !59
  br label %168

168:                                              ; preds = %5, %166
  %169 = phi i8 [ %31, %166 ], [ 0, %5 ]
  ret i8 %169
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ebitmap_and_compl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 !prof !34 {
  %4 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !67
  %9 = tail call ptr @sbitmap_alloc_with_popcount(i32 noundef %7) #14
  tail call void @sbitmap_zero(ptr noundef %9) #14
  %10 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @sbitmap_copy(ptr noundef %9, ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #14
  %16 = load ptr, ptr %4, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i64, ptr %19, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %3, %21
  %24 = phi i64 [ %22, %21 ], [ 0, %3 ]
  %25 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 1
  %26 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %27 = getelementptr inbounds %struct.ebitmap_def, ptr %2, i64 0, i32 4
  %28 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %29 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  br label %31

31:                                               ; preds = %186, %23
  %32 = phi i32 [ 0, %23 ], [ %74, %186 ]
  %33 = phi i32 [ 0, %23 ], [ %189, %186 ]
  %34 = phi i64 [ %24, %23 ], [ %188, %186 ]
  %35 = phi i32 [ undef, %23 ], [ %77, %186 ]
  %36 = phi i8 [ 0, %23 ], [ %187, %186 ]
  %37 = phi i32 [ 0, %23 ], [ %155, %186 ]
  %38 = phi i32 [ 0, %23 ], [ %154, %186 ]
  %39 = icmp eq i64 %34, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = add i32 %32, 1
  %42 = tail call i32 @llvm.umax.i32(i32 %18, i32 %41)
  %43 = add i32 %32, 1
  %44 = icmp ult i32 %43, %18
  br i1 %44, label %57, label %72

45:                                               ; preds = %57
  %46 = shl i32 %58, 6
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi i32 [ %32, %31 ], [ %58, %45 ]
  %49 = phi i32 [ %33, %31 ], [ %46, %45 ]
  %50 = phi i64 [ %34, %31 ], [ %61, %45 ]
  %51 = phi i1 [ %39, %31 ], [ %62, %45 ]
  %52 = and i64 %50, 1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %63, label %72

54:                                               ; preds = %57
  %55 = add i32 %58, 1
  %56 = icmp ult i32 %55, %18
  br i1 %56, label %57, label %70, !llvm.loop !62

57:                                               ; preds = %40, %54
  %58 = phi i32 [ %55, %54 ], [ %43, %40 ]
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, ptr %19, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !58
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %54, label %45, !llvm.loop !62

63:                                               ; preds = %47, %63
  %64 = phi i64 [ %67, %63 ], [ %50, %47 ]
  %65 = phi i32 [ %66, %63 ], [ %49, %47 ]
  %66 = add i32 %65, 1
  %67 = lshr exact i64 %64, 1
  %68 = and i64 %64, 2
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %63, label %72, !llvm.loop !63

70:                                               ; preds = %54
  %71 = shl i32 %58, 6
  br label %72

72:                                               ; preds = %63, %70, %40, %47
  %73 = phi i1 [ %51, %47 ], [ %39, %40 ], [ %62, %70 ], [ %51, %63 ]
  %74 = phi i32 [ %48, %47 ], [ %42, %40 ], [ %42, %70 ], [ %48, %63 ]
  %75 = phi i32 [ %49, %47 ], [ %33, %40 ], [ %71, %70 ], [ %66, %63 ]
  %76 = phi i64 [ %50, %47 ], [ %34, %40 ], [ %61, %70 ], [ %67, %63 ]
  %77 = phi i32 [ %49, %47 ], [ %35, %40 ], [ %35, %70 ], [ %66, %63 ]
  br i1 %73, label %190, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %25, align 8, !tbaa !54
  %80 = getelementptr inbounds %struct.simple_bitmap_def, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !61
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %83, label %137

83:                                               ; preds = %78
  %84 = lshr i32 %77, 6
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds %struct.simple_bitmap_def, ptr %79, i64 0, i32 3, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !58
  %88 = and i32 %77, 63
  %89 = zext nneg i32 %88 to i64
  %90 = shl nuw i64 1, %89
  %91 = and i64 %87, %90
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %137, label %93

93:                                               ; preds = %83
  %94 = zext i32 %77 to i64
  %95 = tail call i64 @sbitmap_popcount(ptr noundef %79, i64 noundef %94) #14
  %96 = trunc i64 %95 to i32
  %97 = load i32, ptr %1, align 8, !tbaa !66
  %98 = icmp ugt i32 %97, %37
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %100

100:                                              ; preds = %93, %99
  %101 = load ptr, ptr %26, align 8, !tbaa !60
  %102 = zext i32 %37 to i64
  %103 = getelementptr inbounds i64, ptr %101, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !58
  %105 = load i32, ptr %2, align 8, !tbaa !66
  %106 = icmp ugt i32 %105, %96
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %108

108:                                              ; preds = %100, %107
  %109 = load ptr, ptr %27, align 8, !tbaa !60
  %110 = and i64 %95, 4294967295
  %111 = getelementptr inbounds i64, ptr %109, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !58
  %113 = xor i64 %112, -1
  %114 = and i64 %104, %113
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = add i32 %38, 1
  %118 = zext i32 %38 to i64
  %119 = getelementptr inbounds i64, ptr %15, i64 %118
  store i64 %114, ptr %119, align 8, !tbaa !58
  br label %152

120:                                              ; preds = %108
  %121 = load ptr, ptr %9, align 8, !tbaa !69
  %122 = icmp eq ptr %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %85
  %125 = load i64, ptr %124, align 8, !tbaa !58
  %126 = and i64 %125, %90
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds i8, ptr %121, i64 %85
  %130 = load i8, ptr %129, align 1, !tbaa !46
  %131 = add i8 %130, -1
  store i8 %131, ptr %129, align 1, !tbaa !46
  br label %132

132:                                              ; preds = %120, %123, %128
  %133 = xor i64 %90, -1
  %134 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %85
  %135 = load i64, ptr %134, align 8, !tbaa !58
  %136 = and i64 %135, %133
  store i64 %136, ptr %134, align 8, !tbaa !58
  br label %152

137:                                              ; preds = %78, %83
  %138 = load i32, ptr %1, align 8, !tbaa !66
  %139 = icmp ugt i32 %138, %37
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %141

141:                                              ; preds = %137, %140
  %142 = load ptr, ptr %28, align 8, !tbaa !60
  %143 = zext i32 %37 to i64
  %144 = getelementptr inbounds i64, ptr %142, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !58
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.1) #14
  br label %148

148:                                              ; preds = %141, %147
  %149 = add i32 %38, 1
  %150 = zext i32 %38 to i64
  %151 = getelementptr inbounds i64, ptr %15, i64 %150
  store i64 %145, ptr %151, align 8, !tbaa !58
  br label %152

152:                                              ; preds = %116, %132, %148
  %153 = phi i64 [ %145, %148 ], [ %114, %132 ], [ %114, %116 ]
  %154 = phi i32 [ %149, %148 ], [ %38, %132 ], [ %117, %116 ]
  %155 = add i32 %37, 1
  %156 = load ptr, ptr %29, align 8, !tbaa !54
  %157 = getelementptr inbounds %struct.simple_bitmap_def, ptr %156, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !61
  %159 = icmp ult i32 %77, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %152
  %161 = lshr i32 %77, 6
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds %struct.simple_bitmap_def, ptr %156, i64 0, i32 3, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !58
  %165 = and i32 %77, 63
  %166 = zext nneg i32 %165 to i64
  %167 = shl nuw i64 1, %166
  %168 = and i64 %164, %167
  %169 = icmp ne i64 %168, 0
  %170 = icmp eq i8 %36, 0
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %172, label %186

172:                                              ; preds = %160
  %173 = zext i32 %77 to i64
  %174 = tail call i64 @sbitmap_popcount(ptr noundef %156, i64 noundef %173) #14
  %175 = trunc i64 %174 to i32
  %176 = load i32, ptr %0, align 8, !tbaa !66
  %177 = icmp ugt i32 %176, %175
  br i1 %177, label %179, label %178

178:                                              ; preds = %172
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %179

179:                                              ; preds = %172, %178
  %180 = load ptr, ptr %30, align 8, !tbaa !60
  %181 = and i64 %174, 4294967295
  %182 = getelementptr inbounds i64, ptr %180, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !58
  %184 = icmp ne i64 %183, %153
  %185 = zext i1 %184 to i8
  br label %186

186:                                              ; preds = %152, %160, %179
  %187 = phi i8 [ %185, %179 ], [ 1, %160 ], [ 1, %152 ]
  %188 = lshr i64 %76, 1
  %189 = add i32 %75, 1
  br label %31, !llvm.loop !78

190:                                              ; preds = %72
  %191 = icmp eq i8 %36, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !54
  %195 = load ptr, ptr %194, align 8, !tbaa !69
  tail call void @free(ptr noundef %195)
  %196 = load ptr, ptr %193, align 8, !tbaa !54
  tail call void @free(ptr noundef %196)
  store ptr %9, ptr %193, align 8, !tbaa !54
  %197 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  store i32 %38, ptr %197, align 8, !tbaa !59
  %198 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %199 = load ptr, ptr %198, align 8, !tbaa !60
  tail call void @free(ptr noundef %199)
  store ptr %15, ptr %198, align 8, !tbaa !60
  store i32 %12, ptr %0, align 8, !tbaa !66
  br label %201

200:                                              ; preds = %190
  tail call void @free(ptr noundef %9)
  tail call void @free(ptr noundef %15)
  br label %201

201:                                              ; preds = %200, %192
  ret i8 %36
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ebitmap_ior_and_compl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 !prof !34 {
  %5 = tail call ptr @ebitmap_alloc(i32 noundef 1)
  %6 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !67
  %7 = tail call zeroext i8 @ebitmap_and_compl(ptr noundef %5, ptr noundef %2, ptr noundef %3), !range !71
  %8 = tail call zeroext i8 @ebitmap_ior(ptr noundef %0, ptr noundef %1, ptr noundef %5), !range !71
  %9 = getelementptr inbounds %struct.ebitmap_def, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  tail call void @free(ptr noundef %10)
  %11 = getelementptr inbounds %struct.ebitmap_def, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  tail call void @free(ptr noundef %13)
  %14 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void @free(ptr noundef %14)
  tail call void @free(ptr noundef %5)
  ret i8 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @ebitmap_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = tail call i32 @llvm.umin.i32(i32 %6, i32 %10)
  %12 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = icmp ugt i32 %6, %10
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = tail call i32 @sbitmap_equal(ptr noundef %4, ptr noundef %8) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %17
  %23 = load ptr, ptr %7, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !56
  %26 = icmp eq i32 %11, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8, !tbaa !54
  %29 = tail call i32 @sbitmap_equal(ptr noundef %23, ptr noundef %28) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %22, %27
  %32 = getelementptr inbounds %struct.ebitmap_def, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.ebitmap_def, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = load i32, ptr %12, align 8, !tbaa !59
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = tail call i32 @bcmp(ptr %33, ptr %35, i64 %38)
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %27, %19, %2, %31
  %43 = phi i8 [ %41, %31 ], [ 0, %2 ], [ 0, %19 ], [ 0, %27 ]
  ret i8 %43
}

declare i32 @sbitmap_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
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
!54 = !{!55, !36, i64 8}
!55 = !{!"ebitmap_def", !41, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 32}
!56 = !{!57, !41, i64 12}
!57 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!58 = !{!42, !42, i64 0}
!59 = !{!55, !41, i64 16}
!60 = !{!55, !36, i64 24}
!61 = !{!57, !41, i64 8}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = !{!55, !41, i64 0}
!67 = !{!55, !36, i64 32}
!68 = !{!55, !41, i64 20}
!69 = !{!57, !36, i64 0}
!70 = distinct !{!70, !52, !53}
!71 = !{i8 0, i8 2}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
