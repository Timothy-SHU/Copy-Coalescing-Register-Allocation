; ModuleID = 'sreal.c'
source_filename = "sreal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.sreal = type { i64, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"(%lu * 2^%d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sreal.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  br i1 %23, label %7, label %24, !llvm.loop !54

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_sreal(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !37 {
  %3 = load i64, ptr %1, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sreal_init(ptr noundef returned %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !60 {
  store i64 %1, ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !59
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %7, !prof !61

6:                                                ; preds = %3
  store i32 -536870911, ptr %4, align 8, !tbaa !59
  br label %36

7:                                                ; preds = %3
  %8 = icmp ult i64 %1, 2147483648
  br i1 %8, label %9, label %18, !prof !62

9:                                                ; preds = %7, %9
  %10 = phi i32 [ %13, %9 ], [ %2, %7 ]
  %11 = phi i64 [ %12, %9 ], [ %1, %7 ]
  %12 = shl nuw nsw i64 %11, 1
  %13 = add nsw i32 %10, -1
  %14 = icmp ult i64 %11, 1073741824
  br i1 %14, label %9, label %15, !prof !63, !llvm.loop !64

15:                                               ; preds = %9
  store i64 %12, ptr %0, align 8, !tbaa !57
  store i32 %13, ptr %4, align 8, !tbaa !59
  %16 = icmp slt i32 %10, -536870910
  br i1 %16, label %17, label %36, !prof !65

17:                                               ; preds = %15
  store i32 -536870911, ptr %4, align 8, !tbaa !59
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %36

18:                                               ; preds = %7
  %19 = icmp ugt i64 %1, 4294967295
  br i1 %19, label %20, label %36, !prof !66

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %24, %20 ], [ %2, %18 ]
  %22 = phi i64 [ %23, %20 ], [ %1, %18 ]
  %23 = lshr i64 %22, 1
  %24 = add nsw i32 %21, 1
  %25 = icmp ugt i64 %22, 8589934591
  br i1 %25, label %20, label %26, !prof !67, !llvm.loop !68

26:                                               ; preds = %20
  store i64 %23, ptr %0, align 8, !tbaa !57
  store i32 %24, ptr %4, align 8, !tbaa !59
  %27 = and i64 %22, 1
  %28 = add nuw nsw i64 %23, %27
  store i64 %28, ptr %0, align 8, !tbaa !57
  %29 = icmp ugt i64 %28, 4294967295
  br i1 %29, label %30, label %32, !prof !69

30:                                               ; preds = %26
  store i64 2147483648, ptr %0, align 8, !tbaa !57
  %31 = add nsw i32 %21, 2
  store i32 %31, ptr %4, align 8, !tbaa !59
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, ptr %4, align 8, !tbaa !59
  %34 = icmp sgt i32 %33, 536870911
  br i1 %34, label %35, label %36, !prof !69

35:                                               ; preds = %32
  store i32 536870911, ptr %4, align 8, !tbaa !59
  store i64 4294967295, ptr %0, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %6, %15, %17, %18, %32, %35
  ret ptr %0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @normalize(ptr nocapture noundef %0) unnamed_addr #10 !prof !70 !PGOFuncName !71 {
  %2 = load i64, ptr %0, align 8, !tbaa !57
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6, !prof !61

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 -536870911, ptr %5, align 8, !tbaa !59
  br label %45

6:                                                ; preds = %1
  %7 = icmp ult i64 %2, 2147483648
  br i1 %7, label %8, label %22, !prof !62

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %0, align 8, !tbaa !57
  %11 = load i32, ptr %9, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %11, %8 ], [ %16, %12 ]
  %14 = phi i64 [ %10, %8 ], [ %15, %12 ]
  %15 = shl i64 %14, 1
  %16 = add nsw i32 %13, -1
  %17 = icmp ult i64 %15, 2147483648
  br i1 %17, label %12, label %18, !prof !63, !llvm.loop !64

18:                                               ; preds = %12
  store i64 %15, ptr %0, align 8, !tbaa !57
  store i32 %16, ptr %9, align 8, !tbaa !59
  %19 = icmp slt i32 %13, -536870910
  br i1 %19, label %20, label %45, !prof !65

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 -536870911, ptr %21, align 8, !tbaa !59
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %45

22:                                               ; preds = %6
  %23 = icmp ugt i64 %2, 4294967295
  br i1 %23, label %24, label %45, !prof !66

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %26 = load i64, ptr %0, align 8, !tbaa !57
  %27 = load i32, ptr %25, align 8, !tbaa !59
  br label %28

28:                                               ; preds = %24, %28
  %29 = phi i32 [ %27, %24 ], [ %32, %28 ]
  %30 = phi i64 [ %26, %24 ], [ %31, %28 ]
  %31 = lshr i64 %30, 1
  %32 = add nsw i32 %29, 1
  %33 = icmp ugt i64 %30, 8589934591
  br i1 %33, label %28, label %34, !prof !67, !llvm.loop !68

34:                                               ; preds = %28
  store i64 %31, ptr %0, align 8, !tbaa !57
  store i32 %32, ptr %25, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %36 = and i64 %30, 1
  %37 = add nuw nsw i64 %31, %36
  store i64 %37, ptr %0, align 8, !tbaa !57
  %38 = icmp ugt i64 %37, 4294967295
  br i1 %38, label %39, label %41, !prof !69

39:                                               ; preds = %34
  store i64 2147483648, ptr %0, align 8, !tbaa !57
  %40 = add nsw i32 %29, 2
  store i32 %40, ptr %35, align 8, !tbaa !59
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, ptr %35, align 8, !tbaa !59
  %43 = icmp sgt i32 %42, 536870911
  br i1 %43, label %44, label %45, !prof !69

44:                                               ; preds = %41
  store i32 536870911, ptr %35, align 8, !tbaa !59
  store i64 4294967295, ptr %0, align 8, !tbaa !57
  br label %45

45:                                               ; preds = %41, %44, %20, %18, %22, %4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @sreal_to_int(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !72 {
  %2 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp slt i32 %3, -31
  br i1 %4, label %20, label %5, !prof !73

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 31
  br i1 %6, label %20, label %7, !prof !74

7:                                                ; preds = %5
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %13, !prof !74

9:                                                ; preds = %7
  %10 = load i64, ptr %0, align 8, !tbaa !57
  %11 = zext nneg i32 %3 to i64
  %12 = shl i64 %10, %11
  br label %20

13:                                               ; preds = %7
  %14 = icmp slt i32 %3, 0
  %15 = load i64, ptr %0, align 8, !tbaa !57
  br i1 %14, label %16, label %20, !prof !75

16:                                               ; preds = %13
  %17 = sub nsw i32 0, %3
  %18 = zext nneg i32 %17 to i64
  %19 = lshr i64 %15, %18
  br label %20

20:                                               ; preds = %13, %5, %1, %16, %9
  %21 = phi i64 [ %12, %9 ], [ %19, %16 ], [ 0, %1 ], [ 9223372036854775807, %5 ], [ %15, %13 ]
  ret i64 %21
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sreal_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !76 {
  %3 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %17, label %8, !prof !77

8:                                                ; preds = %2
  %9 = icmp slt i32 %4, %6
  br i1 %9, label %17, label %10, !prof !78

10:                                               ; preds = %8
  %11 = load i64, ptr %0, align 8, !tbaa !57
  %12 = load i64, ptr %1, align 8, !tbaa !57
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %17, label %14, !prof !79

14:                                               ; preds = %10
  %15 = icmp ult i64 %11, %12
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %14, %10, %8, %2
  %18 = phi i32 [ 1, %2 ], [ -1, %8 ], [ 1, %10 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @sreal_add(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 !prof !80 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  %5 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.sreal, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %16, label %10, !prof !81

10:                                               ; preds = %3
  %11 = icmp slt i32 %6, %8
  br i1 %11, label %16, label %12, !prof !82

12:                                               ; preds = %10
  %13 = load i64, ptr %1, align 8, !tbaa !57
  %14 = load i64, ptr %2, align 8, !tbaa !57
  %15 = icmp ult i64 %13, %14
  br label %16

16:                                               ; preds = %12, %3, %10
  %17 = phi i1 [ false, %3 ], [ true, %10 ], [ %15, %12 ]
  %18 = select i1 %17, ptr %1, ptr %2, !prof !83
  %19 = select i1 %17, ptr %2, ptr %1, !prof !83
  %20 = getelementptr inbounds %struct.sreal, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.sreal, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !59
  %24 = sub nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %21, ptr %25, align 8, !tbaa !59
  %26 = icmp sgt i32 %24, 32
  br i1 %26, label %27, label %29, !prof !84

27:                                               ; preds = %16
  %28 = load i64, ptr %19, align 8, !tbaa !57
  store i64 %28, ptr %0, align 8, !tbaa !57
  br label %87

29:                                               ; preds = %16
  %30 = icmp eq i32 %21, %23
  br i1 %30, label %47, label %31, !prof !85

31:                                               ; preds = %29
  %32 = load i64, ptr %18, align 8, !tbaa !57
  store i64 %32, ptr %4, align 8, !tbaa !57
  %33 = load i32, ptr %22, align 8, !tbaa !59
  %34 = icmp sgt i32 %24, 0
  br i1 %34, label %36, label %35, !prof !86

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 96, ptr noundef nonnull @.str.2) #15
  br label %36

36:                                               ; preds = %35, %31
  %37 = add nsw i32 %33, %24
  %38 = icmp slt i32 %37, 536870912
  br i1 %38, label %40, label %39, !prof !86

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 101, ptr noundef nonnull @.str.2) #15
  br label %40

40:                                               ; preds = %36, %39
  %41 = add nsw i32 %24, -1
  %42 = zext nneg i32 %41 to i64
  %43 = shl nuw i64 1, %42
  %44 = add i64 %32, %43
  %45 = zext nneg i32 %24 to i64
  %46 = lshr i64 %44, %45
  store i64 %46, ptr %4, align 8, !tbaa !57
  br label %47

47:                                               ; preds = %29, %40
  %48 = phi ptr [ %4, %40 ], [ %18, %29 ]
  %49 = load i64, ptr %19, align 8, !tbaa !57
  %50 = load i64, ptr %48, align 8, !tbaa !57
  %51 = add i64 %50, %49
  store i64 %51, ptr %0, align 8, !tbaa !57
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54, !prof !61

53:                                               ; preds = %47
  store i32 -536870911, ptr %25, align 8, !tbaa !59
  br label %87

54:                                               ; preds = %47
  %55 = icmp ult i64 %51, 2147483648
  br i1 %55, label %56, label %67, !prof !62

56:                                               ; preds = %54
  %57 = load i32, ptr %25, align 8, !tbaa !59
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i32 [ %57, %56 ], [ %62, %58 ]
  %60 = phi i64 [ %51, %56 ], [ %61, %58 ]
  %61 = shl nuw nsw i64 %60, 1
  %62 = add nsw i32 %59, -1
  %63 = icmp ult i64 %60, 1073741824
  br i1 %63, label %58, label %64, !prof !63, !llvm.loop !64

64:                                               ; preds = %58
  store i64 %61, ptr %0, align 8, !tbaa !57
  store i32 %62, ptr %25, align 8, !tbaa !59
  %65 = icmp slt i32 %59, -536870910
  br i1 %65, label %66, label %87, !prof !65

66:                                               ; preds = %64
  store i32 -536870911, ptr %25, align 8, !tbaa !59
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %87

67:                                               ; preds = %54
  %68 = icmp ugt i64 %51, 4294967295
  br i1 %68, label %69, label %87, !prof !66

69:                                               ; preds = %67
  %70 = load i32, ptr %25, align 8, !tbaa !59
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i32 [ %70, %69 ], [ %75, %71 ]
  %73 = phi i64 [ %51, %69 ], [ %74, %71 ]
  %74 = lshr i64 %73, 1
  %75 = add nsw i32 %72, 1
  %76 = icmp ugt i64 %73, 8589934591
  br i1 %76, label %71, label %77, !prof !67, !llvm.loop !68

77:                                               ; preds = %71
  store i64 %74, ptr %0, align 8, !tbaa !57
  store i32 %75, ptr %25, align 8, !tbaa !59
  %78 = and i64 %73, 1
  %79 = add nuw nsw i64 %74, %78
  store i64 %79, ptr %0, align 8, !tbaa !57
  %80 = icmp ugt i64 %79, 4294967295
  br i1 %80, label %81, label %83, !prof !69

81:                                               ; preds = %77
  store i64 2147483648, ptr %0, align 8, !tbaa !57
  %82 = add nsw i32 %72, 2
  store i32 %82, ptr %25, align 8, !tbaa !59
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, ptr %25, align 8, !tbaa !59
  %85 = icmp sgt i32 %84, 536870911
  br i1 %85, label %86, label %87, !prof !69

86:                                               ; preds = %83
  store i32 536870911, ptr %25, align 8, !tbaa !59
  store i64 4294967295, ptr %0, align 8, !tbaa !57
  br label %87

87:                                               ; preds = %86, %83, %67, %66, %64, %53, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @sreal_sub(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #13 !prof !70 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  %5 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.sreal, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %17, label %10, !prof !87

10:                                               ; preds = %3
  %11 = icmp slt i32 %6, %8
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = load i64, ptr %1, align 8, !tbaa !57
  %14 = load i64, ptr %2, align 8, !tbaa !57
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %17, !prof !88

16:                                               ; preds = %10, %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @.str.2) #15
  br label %17

17:                                               ; preds = %3, %12, %16
  %18 = load i32, ptr %5, align 8, !tbaa !59
  %19 = load i32, ptr %7, align 8, !tbaa !59
  %20 = sub nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %18, ptr %21, align 8, !tbaa !59
  %22 = icmp sgt i32 %20, 32
  br i1 %22, label %23, label %25, !prof !88

23:                                               ; preds = %17
  %24 = load i64, ptr %1, align 8, !tbaa !57
  store i64 %24, ptr %0, align 8, !tbaa !57
  br label %48

25:                                               ; preds = %17
  %26 = icmp eq i32 %18, %19
  br i1 %26, label %43, label %27, !prof !88

27:                                               ; preds = %25
  %28 = load i64, ptr %2, align 8, !tbaa !57
  store i64 %28, ptr %4, align 8, !tbaa !57
  %29 = load i32, ptr %7, align 8, !tbaa !59
  %30 = icmp sgt i32 %20, 0
  br i1 %30, label %32, label %31, !prof !87

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 96, ptr noundef nonnull @.str.2) #15
  br label %32

32:                                               ; preds = %31, %27
  %33 = add nsw i32 %29, %20
  %34 = icmp slt i32 %33, 536870912
  br i1 %34, label %36, label %35, !prof !87

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 101, ptr noundef nonnull @.str.2) #15
  br label %36

36:                                               ; preds = %32, %35
  %37 = add nsw i32 %20, -1
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = add i64 %28, %39
  %41 = zext nneg i32 %20 to i64
  %42 = lshr i64 %40, %41
  store i64 %42, ptr %4, align 8, !tbaa !57
  br label %43

43:                                               ; preds = %25, %36
  %44 = phi ptr [ %4, %36 ], [ %2, %25 ]
  %45 = load i64, ptr %1, align 8, !tbaa !57
  %46 = load i64, ptr %44, align 8, !tbaa !57
  %47 = sub i64 %45, %46
  store i64 %47, ptr %0, align 8, !tbaa !57
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %48

48:                                               ; preds = %43, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  ret ptr %0
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sreal_mul(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 !prof !89 {
  %4 = load i64, ptr %1, align 8, !tbaa !57
  %5 = icmp ult i64 %4, 2147483648
  br i1 %5, label %9, label %6, !prof !90

6:                                                ; preds = %3
  %7 = load i64, ptr %2, align 8, !tbaa !57
  %8 = icmp ult i64 %7, 2147483648
  br i1 %8, label %9, label %11, !prof !91

9:                                                ; preds = %6, %3
  store i64 0, ptr %0, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 -536870911, ptr %10, align 8, !tbaa !59
  br label %50

11:                                               ; preds = %6
  %12 = mul i64 %7, %4
  store i64 %12, ptr %0, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.sreal, ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = add nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !59
  %19 = icmp eq i64 %12, 0
  br i1 %19, label %20, label %21, !prof !61

20:                                               ; preds = %11
  store i32 -536870911, ptr %18, align 8, !tbaa !59
  br label %50

21:                                               ; preds = %11
  %22 = icmp ult i64 %12, 2147483648
  br i1 %22, label %23, label %32, !prof !62

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %27, %23 ], [ %17, %21 ]
  %25 = phi i64 [ %26, %23 ], [ %12, %21 ]
  %26 = shl nuw nsw i64 %25, 1
  %27 = add nsw i32 %24, -1
  %28 = icmp ult i64 %25, 1073741824
  br i1 %28, label %23, label %29, !prof !63, !llvm.loop !64

29:                                               ; preds = %23
  store i64 %26, ptr %0, align 8, !tbaa !57
  store i32 %27, ptr %18, align 8, !tbaa !59
  %30 = icmp slt i32 %24, -536870910
  br i1 %30, label %31, label %50, !prof !65

31:                                               ; preds = %29
  store i32 -536870911, ptr %18, align 8, !tbaa !59
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %50

32:                                               ; preds = %21
  %33 = icmp ugt i64 %12, 4294967295
  br i1 %33, label %34, label %50, !prof !66

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %38, %34 ], [ %17, %32 ]
  %36 = phi i64 [ %37, %34 ], [ %12, %32 ]
  %37 = lshr i64 %36, 1
  %38 = add nsw i32 %35, 1
  %39 = icmp ugt i64 %36, 8589934591
  br i1 %39, label %34, label %40, !prof !67, !llvm.loop !68

40:                                               ; preds = %34
  store i64 %37, ptr %0, align 8, !tbaa !57
  store i32 %38, ptr %18, align 8, !tbaa !59
  %41 = and i64 %36, 1
  %42 = add nuw nsw i64 %37, %41
  store i64 %42, ptr %0, align 8, !tbaa !57
  %43 = icmp ugt i64 %42, 4294967295
  br i1 %43, label %44, label %46, !prof !69

44:                                               ; preds = %40
  store i64 2147483648, ptr %0, align 8, !tbaa !57
  %45 = add nsw i32 %35, 2
  store i32 %45, ptr %18, align 8, !tbaa !59
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, ptr %18, align 8, !tbaa !59
  %48 = icmp sgt i32 %47, 536870911
  br i1 %48, label %49, label %50, !prof !69

49:                                               ; preds = %46
  store i32 536870911, ptr %18, align 8, !tbaa !59
  store i64 4294967295, ptr %0, align 8, !tbaa !57
  br label %50

50:                                               ; preds = %49, %46, %32, %31, %29, %20, %9
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sreal_div(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 !prof !92 {
  %4 = load i64, ptr %2, align 8, !tbaa !57
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7, !prof !93

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %3, %6
  %8 = load i64, ptr %1, align 8, !tbaa !57
  %9 = shl i64 %8, 32
  %10 = load i64, ptr %2, align 8, !tbaa !57
  %11 = udiv i64 %9, %10
  store i64 %11, ptr %0, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.sreal, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = sub nsw i32 %13, %15
  %17 = add nsw i32 %16, -32
  %18 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !59
  %19 = icmp ugt i64 %10, %9
  br i1 %19, label %20, label %21, !prof !61

20:                                               ; preds = %7
  store i32 -536870911, ptr %18, align 8, !tbaa !59
  br label %50

21:                                               ; preds = %7
  %22 = icmp ult i64 %11, 2147483648
  br i1 %22, label %23, label %32, !prof !62

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %27, %23 ], [ %17, %21 ]
  %25 = phi i64 [ %26, %23 ], [ %11, %21 ]
  %26 = shl nuw nsw i64 %25, 1
  %27 = add nsw i32 %24, -1
  %28 = icmp ult i64 %25, 1073741824
  br i1 %28, label %23, label %29, !prof !63, !llvm.loop !64

29:                                               ; preds = %23
  store i64 %26, ptr %0, align 8, !tbaa !57
  store i32 %27, ptr %18, align 8, !tbaa !59
  %30 = icmp slt i32 %24, -536870910
  br i1 %30, label %31, label %50, !prof !65

31:                                               ; preds = %29
  store i32 -536870911, ptr %18, align 8, !tbaa !59
  store i64 0, ptr %0, align 8, !tbaa !57
  br label %50

32:                                               ; preds = %21
  %33 = icmp ugt i64 %11, 4294967295
  br i1 %33, label %34, label %50, !prof !66

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %38, %34 ], [ %17, %32 ]
  %36 = phi i64 [ %37, %34 ], [ %11, %32 ]
  %37 = lshr i64 %36, 1
  %38 = add nsw i32 %35, 1
  %39 = icmp ugt i64 %36, 8589934591
  br i1 %39, label %34, label %40, !prof !67, !llvm.loop !68

40:                                               ; preds = %34
  store i64 %37, ptr %0, align 8, !tbaa !57
  store i32 %38, ptr %18, align 8, !tbaa !59
  %41 = and i64 %36, 1
  %42 = add nuw nsw i64 %37, %41
  store i64 %42, ptr %0, align 8, !tbaa !57
  %43 = icmp ugt i64 %42, 4294967295
  br i1 %43, label %44, label %46, !prof !69

44:                                               ; preds = %40
  store i64 2147483648, ptr %0, align 8, !tbaa !57
  %45 = add nsw i32 %35, 2
  store i32 %45, ptr %18, align 8, !tbaa !59
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, ptr %18, align 8, !tbaa !59
  %48 = icmp sgt i32 %47, 536870911
  br i1 %48, label %49, label %50, !prof !69

49:                                               ; preds = %46
  store i32 536870911, ptr %18, align 8, !tbaa !59
  store i64 4294967295, ptr %0, align 8, !tbaa !57
  br label %50

50:                                               ; preds = %20, %29, %31, %32, %46, %49
  ret ptr %0
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }

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
!35 = !{ptr @sreal_sub, ptr @normalize, i64 1}
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
!57 = !{!58, !45, i64 0}
!58 = !{!"sreal", !45, i64 0, !44, i64 8}
!59 = !{!58, !44, i64 8}
!60 = !{!"function_entry_count", i64 1171409}
!61 = !{!"branch_weights", i32 123, i32 3805873}
!62 = !{!"branch_weights", i32 1171287, i32 2634586}
!63 = !{!"branch_weights", i32 21718024, i32 1171287}
!64 = distinct !{!64, !55, !56}
!65 = !{!"branch_weights", i32 0, i32 1171287}
!66 = !{!"branch_weights", i32 2151193, i32 483393}
!67 = !{!"branch_weights", i32 62812095, i32 2151193}
!68 = distinct !{!68, !55, !56}
!69 = !{!"branch_weights", i32 0, i32 2151193}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!"sreal.c;normalize"}
!72 = !{!"function_entry_count", i64 293386}
!73 = !{!"branch_weights", i32 50138, i32 243248}
!74 = !{!"branch_weights", i32 0, i32 243248}
!75 = !{!"branch_weights", i32 243248, i32 0}
!76 = !{!"function_entry_count", i64 586538}
!77 = !{!"branch_weights", i32 293025, i32 293513}
!78 = !{!"branch_weights", i32 104, i32 293409}
!79 = !{!"branch_weights", i32 101, i32 293308}
!80 = !{!"function_entry_count", i64 879088}
!81 = !{!"branch_weights", i32 485944, i32 393144}
!82 = !{!"branch_weights", i32 356904, i32 36240}
!83 = !{!"branch_weights", i32 362790, i32 516298}
!84 = !{!"branch_weights", i32 294890, i32 584198}
!85 = !{!"branch_weights", i32 36240, i32 547958}
!86 = !{!"branch_weights", i32 547958, i32 0}
!87 = !{!"branch_weights", i32 1, i32 0}
!88 = !{!"branch_weights", i32 0, i32 1}
!89 = !{!"function_entry_count", i64 2050492}
!90 = !{!"branch_weights", i32 183, i32 2050309}
!91 = !{!"branch_weights", i32 0, i32 2050309}
!92 = !{!"function_entry_count", i64 79}
!93 = !{!"branch_weights", i32 0, i32 79}
