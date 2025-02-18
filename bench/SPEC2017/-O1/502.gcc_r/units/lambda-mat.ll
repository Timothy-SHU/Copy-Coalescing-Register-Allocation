; ModuleID = 'lambda-mat.c'
source_filename = "lambda-mat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"lambda-mat.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./lambda.h\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
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
  %5 = tail call ptr @__ctype_tolower_loc() #21
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
  %5 = tail call ptr @__ctype_toupper_loc() #21
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
define dso_local ptr @lambda_matrix_new(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef %4) #21
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 2
  %10 = zext nneg i32 %0 to i64
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %15, %11 ]
  %13 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %9) #21
  %14 = getelementptr inbounds ptr, ptr %5, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !35
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, %10
  br i1 %16, label %17, label %11, !llvm.loop !54

17:                                               ; preds = %11, %2
  ret ptr %5
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = sext i32 %3 to i64
  %8 = shl nsw i64 %7, 2
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %16, %10 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %1, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %13, i64 %8, i1 false)
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !llvm.loop !55

18:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_id(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %18
  %8 = phi i64 [ 0, %4 ], [ %19, %18 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %16, %11 ]
  %13 = icmp eq i64 %8, %12
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds i32, ptr %10, i64 %12
  store i32 %14, ptr %15, align 4, !tbaa !50
  %16 = add nuw nsw i64 %12, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %11, !llvm.loop !56

18:                                               ; preds = %11
  %19 = add nuw nsw i64 %8, 1
  %20 = icmp eq i64 %19, %5
  br i1 %20, label %21, label %7, !llvm.loop !57

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @lambda_matrix_id_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %26
  %7 = phi i64 [ 0, %4 ], [ %28, %26 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = getelementptr inbounds ptr, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %6, %23
  %11 = phi i64 [ 0, %6 ], [ %24, %23 ]
  %12 = icmp eq i64 %7, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 8, !tbaa !35
  %15 = getelementptr inbounds i32, ptr %14, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %30

18:                                               ; preds = %10
  %19 = load ptr, ptr %8, align 8, !tbaa !35
  %20 = getelementptr inbounds i32, ptr %19, i64 %11
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13, %18
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %5
  br i1 %25, label %26, label %10, !llvm.loop !58

26:                                               ; preds = %23
  %27 = zext nneg i32 %1 to i64
  %28 = add nuw nsw i64 %7, 1
  %29 = icmp eq i64 %28, %27
  br i1 %29, label %30, label %6, !llvm.loop !59

30:                                               ; preds = %26, %18, %13, %2
  %31 = phi i8 [ 1, %2 ], [ 0, %13 ], [ 0, %18 ], [ 1, %26 ]
  ret i8 %31
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_negate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = icmp sgt i32 %3, 0
  %8 = zext nneg i32 %2 to i64
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %6, %24
  %11 = phi i64 [ 0, %6 ], [ %25, %24 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %1, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br i1 %7, label %16, label %24

16:                                               ; preds = %10, %16
  %17 = phi i64 [ %22, %16 ], [ 0, %10 ]
  %18 = getelementptr inbounds i32, ptr %13, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = sub nsw i32 0, %19
  %21 = getelementptr inbounds i32, ptr %15, i64 %17
  store i32 %20, ptr %21, align 4, !tbaa !50
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %16, !llvm.loop !60

24:                                               ; preds = %16, %10
  %25 = add nuw nsw i64 %11, 1
  %26 = icmp eq i64 %25, %8
  br i1 %26, label %27, label %10, !llvm.loop !61

27:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_transpose(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  %8 = zext nneg i32 %3 to i64
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %6, %24
  %11 = phi i64 [ 0, %6 ], [ %25, %24 ]
  br i1 %7, label %12, label %24

12:                                               ; preds = %10
  %13 = getelementptr inbounds ptr, ptr %1, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %22, %15 ]
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds i32, ptr %18, i64 %11
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %20, ptr %21, align 4, !tbaa !50
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %15, !llvm.loop !62

24:                                               ; preds = %15, %10
  %25 = add nuw nsw i64 %11, 1
  %26 = icmp eq i64 %25, %8
  br i1 %26, label %27, label %10, !llvm.loop !63

27:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0
  %9 = zext nneg i32 %3 to i64
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %7, %29
  %12 = phi i64 [ 0, %7 ], [ %30, %29 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %1, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %2, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  br i1 %8, label %19, label %29

19:                                               ; preds = %11, %19
  %20 = phi i64 [ %27, %19 ], [ 0, %11 ]
  %21 = getelementptr inbounds i32, ptr %14, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = getelementptr inbounds i32, ptr %16, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = add nsw i32 %24, %22
  %26 = getelementptr inbounds i32, ptr %18, i64 %20
  store i32 %25, ptr %26, align 4, !tbaa !50
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %19, !llvm.loop !64

29:                                               ; preds = %19, %11
  %30 = add nuw nsw i64 %12, 1
  %31 = icmp eq i64 %30, %9
  br i1 %31, label %32, label %11, !llvm.loop !65

32:                                               ; preds = %29, %5
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_add_mc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 !prof !34 {
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %7
  %10 = icmp sgt i32 %6, 0
  %11 = zext nneg i32 %5 to i64
  %12 = zext nneg i32 %6 to i64
  br label %13

13:                                               ; preds = %9, %33
  %14 = phi i64 [ 0, %9 ], [ %34, %33 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %2, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %4, i64 %14
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br i1 %10, label %21, label %33

21:                                               ; preds = %13, %21
  %22 = phi i64 [ %31, %21 ], [ 0, %13 ]
  %23 = getelementptr inbounds i32, ptr %16, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = mul nsw i32 %24, %1
  %26 = getelementptr inbounds i32, ptr %18, i64 %22
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = mul nsw i32 %27, %3
  %29 = add nsw i32 %28, %25
  %30 = getelementptr inbounds i32, ptr %20, i64 %22
  store i32 %29, ptr %30, align 4, !tbaa !50
  %31 = add nuw nsw i64 %22, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %21, !llvm.loop !66

33:                                               ; preds = %21, %13
  %34 = add nuw nsw i64 %14, 1
  %35 = icmp eq i64 %34, %11
  br i1 %35, label %36, label %13, !llvm.loop !67

36:                                               ; preds = %33, %7
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_mult(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 !prof !34 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %6
  %9 = icmp sgt i32 %5, 0
  %10 = icmp sgt i32 %4, 0
  %11 = zext nneg i32 %3 to i64
  %12 = zext nneg i32 %5 to i64
  %13 = zext nneg i32 %4 to i64
  br label %14

14:                                               ; preds = %8, %42
  %15 = phi i64 [ 0, %8 ], [ %43, %42 ]
  br i1 %9, label %16, label %42

16:                                               ; preds = %14
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %0, i64 %15
  br label %20

20:                                               ; preds = %16, %39
  %21 = phi i64 [ 0, %16 ], [ %40, %39 ]
  %22 = getelementptr inbounds i32, ptr %18, i64 %21
  store i32 0, ptr %22, align 4, !tbaa !50
  br i1 %10, label %23, label %39

23:                                               ; preds = %20
  %24 = load ptr, ptr %19, align 8, !tbaa !35
  %25 = load i32, ptr %22, align 4, !tbaa !50
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %37, %26 ]
  %28 = phi i32 [ %25, %23 ], [ %36, %26 ]
  %29 = getelementptr inbounds i32, ptr %24, i64 %27
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = getelementptr inbounds ptr, ptr %1, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = getelementptr inbounds i32, ptr %32, i64 %21
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = mul nsw i32 %34, %30
  %36 = add nsw i32 %28, %35
  store i32 %36, ptr %22, align 4, !tbaa !50
  %37 = add nuw nsw i64 %27, 1
  %38 = icmp eq i64 %37, %13
  br i1 %38, label %39, label %26, !llvm.loop !68

39:                                               ; preds = %26, %20
  %40 = add nuw nsw i64 %21, 1
  %41 = icmp eq i64 %40, %12
  br i1 %41, label %42, label %20, !llvm.loop !69

42:                                               ; preds = %39, %14
  %43 = add nuw nsw i64 %15, 1
  %44 = icmp eq i64 %43, %11
  br i1 %44, label %45, label %14, !llvm.loop !70

45:                                               ; preds = %42, %6
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @lambda_matrix_delete_rows(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !34 {
  %5 = sub i32 %3, %2
  %6 = icmp slt i32 %3, %1
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = sext i32 %3 to i64
  %9 = sext i32 %5 to i64
  %10 = sext i32 %1 to i64
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %8, %7 ], [ %17, %11 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = sub nsw i64 %12, %9
  %16 = getelementptr inbounds ptr, ptr %0, i64 %15
  store ptr %14, ptr %16, align 8, !tbaa !35
  %17 = add nsw i64 %12, 1
  %18 = icmp eq i64 %17, %10
  br i1 %18, label %19, label %11, !llvm.loop !71

19:                                               ; preds = %11, %4
  %20 = icmp sgt i32 %5, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = sub i32 %1, %5
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 3
  %25 = getelementptr i8, ptr %0, i64 %24
  %26 = add i32 %2, %1
  %27 = add i32 %26, 1
  %28 = sub i32 %27, %3
  %29 = tail call i32 @llvm.smax.i32(i32 %1, i32 %28)
  %30 = add i32 %29, %3
  %31 = xor i32 %2, -1
  %32 = add i32 %30, %31
  %33 = sub i32 %32, %1
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, i8 0, i64 %36, i1 false), !tbaa !35
  br label %37

37:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @lambda_matrix_row_exchange(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !34 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  store ptr %9, ptr %5, align 8, !tbaa !35
  store ptr %6, ptr %8, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_row_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp ne i32 %4, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = zext i32 %1 to i64
  br label %17

17:                                               ; preds = %9, %17
  %18 = phi i64 [ 0, %9 ], [ %25, %17 ]
  %19 = getelementptr inbounds i32, ptr %12, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = mul nsw i32 %20, %4
  %22 = getelementptr inbounds i32, ptr %15, i64 %18
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = add nsw i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !50
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %16
  br i1 %26, label %27, label %17, !llvm.loop !72

27:                                               ; preds = %17, %5
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_row_negate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %15, %10 ]
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = sub nsw i32 0, %13
  store i32 %14, ptr %12, align 4, !tbaa !50
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %9
  br i1 %16, label %17, label %10, !llvm.loop !60

17:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_row_mc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %16, %11 ]
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = mul nsw i32 %14, %3
  store i32 %15, ptr %13, align 4, !tbaa !50
  %16 = add nuw nsw i64 %12, 1
  %17 = icmp eq i64 %16, %10
  br i1 %17, label %18, label %11, !llvm.loop !73

18:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_exchange(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = sext i32 %3 to i64
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %18, %10 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds i32, ptr %13, i64 %7
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = getelementptr inbounds i32, ptr %13, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !50
  store i32 %17, ptr %14, align 4, !tbaa !50
  store i32 %15, ptr %16, align 4, !tbaa !50
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !74

20:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp ne i32 %4, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = sext i32 %3 to i64
  %12 = zext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %23, %13 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds i32, ptr %16, i64 %10
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = mul nsw i32 %18, %4
  %20 = getelementptr inbounds i32, ptr %16, i64 %11
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = add nsw i32 %21, %19
  store i32 %22, ptr %20, align 4, !tbaa !50
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %25, label %13, !llvm.loop !75

25:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_negate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %15, %8 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i32, ptr %11, i64 %6
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = sub nsw i32 0, %13
  store i32 %14, ptr %12, align 4, !tbaa !50
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !76

17:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_col_mc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %16, %9 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds i32, ptr %12, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = mul nsw i32 %14, %3
  store i32 %15, ptr %13, align 4, !tbaa !50
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !llvm.loop !77

18:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lambda_matrix_inverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %36

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = getelementptr inbounds ptr, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = getelementptr inbounds i32, ptr %6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = getelementptr inbounds i32, ptr %9, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = load ptr, ptr %1, align 8, !tbaa !35
  store i32 %14, ptr %15, align 4, !tbaa !50
  %16 = sub nsw i32 0, %12
  %17 = getelementptr inbounds i32, ptr %15, i64 1
  store i32 %16, ptr %17, align 4, !tbaa !50
  %18 = sub nsw i32 0, %10
  %19 = getelementptr inbounds ptr, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  store i32 %18, ptr %20, align 4, !tbaa !50
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  store i32 %7, ptr %21, align 4, !tbaa !50
  %22 = mul nsw i32 %14, %7
  %23 = mul nsw i32 %12, %10
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %338

26:                                               ; preds = %5
  %27 = sub nsw i32 0, %24
  %28 = load i32, ptr %15, align 4, !tbaa !50
  %29 = sub nsw i32 0, %28
  store i32 %29, ptr %15, align 4, !tbaa !50
  %30 = load i32, ptr %20, align 4, !tbaa !50
  %31 = sub nsw i32 0, %30
  store i32 %31, ptr %20, align 4, !tbaa !50
  %32 = load i32, ptr %17, align 4, !tbaa !50
  %33 = sub nsw i32 0, %32
  store i32 %33, ptr %17, align 4, !tbaa !50
  %34 = load i32, ptr %21, align 4, !tbaa !50
  %35 = sub nsw i32 0, %34
  store i32 %35, ptr %21, align 4, !tbaa !50
  br label %338

36:                                               ; preds = %3
  %37 = sext i32 %2 to i64
  %38 = shl nsw i64 %37, 3
  %39 = tail call ptr @ggc_alloc_stat(i64 noundef %38) #21
  %40 = icmp sgt i32 %2, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = shl nuw nsw i64 %37, 2
  %43 = zext nneg i32 %2 to i64
  br label %49

44:                                               ; preds = %49, %36
  %45 = icmp sgt i32 %2, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %37, 2
  %48 = zext nneg i32 %2 to i64
  br label %60

49:                                               ; preds = %41, %49
  %50 = phi i64 [ 0, %41 ], [ %53, %49 ]
  %51 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %42) #21
  %52 = getelementptr inbounds ptr, ptr %39, i64 %50
  store ptr %51, ptr %52, align 8, !tbaa !35
  %53 = add nuw nsw i64 %50, 1
  %54 = icmp eq i64 %53, %43
  br i1 %54, label %44, label %49, !llvm.loop !54

55:                                               ; preds = %60, %44
  %56 = icmp sgt i32 %2, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %55
  %58 = zext nneg i32 %2 to i64
  %59 = zext nneg i32 %2 to i64
  br label %68

60:                                               ; preds = %46, %60
  %61 = phi i64 [ 0, %46 ], [ %66, %60 ]
  %62 = getelementptr inbounds ptr, ptr %0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = getelementptr inbounds ptr, ptr %39, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %65, ptr align 4 %63, i64 %47, i1 false)
  %66 = add nuw nsw i64 %61, 1
  %67 = icmp eq i64 %66, %48
  br i1 %67, label %55, label %60, !llvm.loop !55

68:                                               ; preds = %57, %94
  %69 = phi i64 [ 0, %57 ], [ %95, %94 ]
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  br label %87

72:                                               ; preds = %94, %55
  %73 = icmp sgt i32 %2, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %72
  %75 = zext nneg i32 %2 to i64
  %76 = zext nneg i32 %2 to i64
  %77 = zext nneg i32 %2 to i64
  %78 = zext nneg i32 %2 to i64
  %79 = zext nneg i32 %2 to i64
  %80 = zext nneg i32 %2 to i64
  %81 = zext nneg i32 %2 to i64
  %82 = zext nneg i32 %2 to i64
  %83 = zext nneg i32 %2 to i64
  %84 = zext nneg i32 %2 to i64
  %85 = zext nneg i32 %2 to i64
  %86 = zext nneg i32 %2 to i64
  br label %113

87:                                               ; preds = %68, %87
  %88 = phi i64 [ 0, %68 ], [ %92, %87 ]
  %89 = icmp eq i64 %69, %88
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds i32, ptr %71, i64 %88
  store i32 %90, ptr %91, align 4, !tbaa !50
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, %59
  br i1 %93, label %94, label %87, !llvm.loop !56

94:                                               ; preds = %87
  %95 = add nuw nsw i64 %69, 1
  %96 = icmp eq i64 %95, %58
  br i1 %96, label %72, label %68, !llvm.loop !57

97:                                               ; preds = %147, %149, %118
  %98 = add nuw nsw i64 %114, 1
  %99 = icmp eq i64 %119, %76
  br i1 %99, label %100, label %113

100:                                              ; preds = %97, %72
  %101 = icmp sgt i32 %2, 0
  br i1 %101, label %102, label %338

102:                                              ; preds = %100
  %103 = add nsw i32 %2, -1
  %104 = zext nneg i32 %2 to i64
  %105 = add nsw i32 %2, -2
  %106 = zext i32 %103 to i64
  %107 = zext nneg i32 %2 to i64
  %108 = zext nneg i32 %2 to i64
  %109 = zext nneg i32 %2 to i64
  %110 = zext nneg i32 %2 to i64
  %111 = zext nneg i32 %2 to i64
  %112 = zext nneg i32 %2 to i64
  br label %249

113:                                              ; preds = %74, %97
  %114 = phi i64 [ 1, %74 ], [ %98, %97 ]
  %115 = phi i64 [ 0, %74 ], [ %119, %97 ]
  %116 = getelementptr inbounds ptr, ptr %39, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  br label %121

118:                                              ; preds = %144
  %119 = add nuw nsw i64 %115, 1
  %120 = icmp ult i64 %119, %75
  br i1 %120, label %148, label %97

121:                                              ; preds = %113, %144
  %122 = phi i64 [ %115, %113 ], [ %145, %144 ]
  %123 = getelementptr inbounds i32, ptr %117, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %121, %126
  %127 = phi i64 [ %133, %126 ], [ 0, %121 ]
  %128 = getelementptr inbounds ptr, ptr %39, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  %130 = getelementptr inbounds i32, ptr %129, i64 %122
  %131 = load i32, ptr %130, align 4, !tbaa !50
  %132 = sub nsw i32 0, %131
  store i32 %132, ptr %130, align 4, !tbaa !50
  %133 = add nuw nsw i64 %127, 1
  %134 = icmp eq i64 %133, %78
  br i1 %134, label %135, label %126, !llvm.loop !76

135:                                              ; preds = %126, %135
  %136 = phi i64 [ %142, %135 ], [ 0, %126 ]
  %137 = getelementptr inbounds ptr, ptr %1, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !35
  %139 = getelementptr inbounds i32, ptr %138, i64 %122
  %140 = load i32, ptr %139, align 4, !tbaa !50
  %141 = sub nsw i32 0, %140
  store i32 %141, ptr %139, align 4, !tbaa !50
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp eq i64 %142, %79
  br i1 %143, label %144, label %135, !llvm.loop !76

144:                                              ; preds = %135, %121
  %145 = add nuw nsw i64 %122, 1
  %146 = icmp eq i64 %145, %77
  br i1 %146, label %118, label %121, !llvm.loop !78

147:                                              ; preds = %242
  br i1 %120, label %148, label %97, !llvm.loop !79

148:                                              ; preds = %118, %147
  br label %152

149:                                              ; preds = %152
  %150 = add nuw nsw i64 %153, 1
  %151 = icmp eq i64 %150, %80
  br i1 %151, label %97, label %152, !llvm.loop !80

152:                                              ; preds = %148, %149
  %153 = phi i64 [ %114, %148 ], [ %150, %149 ]
  %154 = getelementptr inbounds i32, ptr %117, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %149, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds i32, ptr %117, i64 %115
  br label %159

159:                                              ; preds = %157, %174
  %160 = phi i64 [ %115, %157 ], [ %176, %174 ]
  %161 = phi i32 [ -1, %157 ], [ %175, %174 ]
  %162 = getelementptr inbounds i32, ptr %117, i64 %160
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %159
  %166 = icmp slt i32 %161, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %165
  %168 = zext nneg i32 %161 to i64
  %169 = getelementptr inbounds i32, ptr %117, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !50
  %171 = icmp slt i32 %163, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %167, %165
  %173 = trunc i64 %160 to i32
  br label %174

174:                                              ; preds = %172, %167, %159
  %175 = phi i32 [ %173, %172 ], [ %161, %167 ], [ %161, %159 ]
  %176 = add nuw nsw i64 %160, 1
  %177 = icmp eq i64 %176, %81
  br i1 %177, label %178, label %159, !llvm.loop !81

178:                                              ; preds = %174
  %179 = icmp sgt i32 %175, -1
  br i1 %179, label %181, label %180

180:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 352, ptr noundef nonnull @.str.2) #21
  br label %181

181:                                              ; preds = %178, %180
  %182 = sext i32 %175 to i64
  br label %185

183:                                              ; preds = %185
  %184 = sext i32 %175 to i64
  br label %195

185:                                              ; preds = %181, %185
  %186 = phi i64 [ 0, %181 ], [ %193, %185 ]
  %187 = getelementptr inbounds ptr, ptr %39, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  %189 = getelementptr inbounds i32, ptr %188, i64 %115
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = getelementptr inbounds i32, ptr %188, i64 %182
  %192 = load i32, ptr %191, align 4, !tbaa !50
  store i32 %192, ptr %189, align 4, !tbaa !50
  store i32 %190, ptr %191, align 4, !tbaa !50
  %193 = add nuw nsw i64 %186, 1
  %194 = icmp eq i64 %193, %82
  br i1 %194, label %183, label %185, !llvm.loop !74

195:                                              ; preds = %183, %195
  %196 = phi i64 [ 0, %183 ], [ %203, %195 ]
  %197 = getelementptr inbounds ptr, ptr %1, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !35
  %199 = getelementptr inbounds i32, ptr %198, i64 %115
  %200 = load i32, ptr %199, align 4, !tbaa !50
  %201 = getelementptr inbounds i32, ptr %198, i64 %184
  %202 = load i32, ptr %201, align 4, !tbaa !50
  store i32 %202, ptr %199, align 4, !tbaa !50
  store i32 %200, ptr %201, align 4, !tbaa !50
  %203 = add nuw nsw i64 %196, 1
  %204 = icmp eq i64 %203, %83
  br i1 %204, label %205, label %195, !llvm.loop !74

205:                                              ; preds = %195, %242
  %206 = phi i64 [ %243, %242 ], [ %114, %195 ]
  %207 = getelementptr inbounds i32, ptr %117, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !50
  %209 = sub nsw i32 0, %208
  %210 = load i32, ptr %158, align 4, !tbaa !50
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %214, label %212

212:                                              ; preds = %205
  %213 = sdiv i32 %209, %210
  br label %214

214:                                              ; preds = %212, %205
  %215 = phi i32 [ %213, %212 ], [ %209, %205 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %242, label %217

217:                                              ; preds = %214, %217
  %218 = phi i64 [ %227, %217 ], [ 0, %214 ]
  %219 = getelementptr inbounds ptr, ptr %39, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !35
  %221 = getelementptr inbounds i32, ptr %220, i64 %115
  %222 = load i32, ptr %221, align 4, !tbaa !50
  %223 = mul nsw i32 %222, %215
  %224 = getelementptr inbounds i32, ptr %220, i64 %206
  %225 = load i32, ptr %224, align 4, !tbaa !50
  %226 = add nsw i32 %225, %223
  store i32 %226, ptr %224, align 4, !tbaa !50
  %227 = add nuw nsw i64 %218, 1
  %228 = icmp eq i64 %227, %85
  br i1 %228, label %229, label %217, !llvm.loop !75

229:                                              ; preds = %217
  br i1 %216, label %242, label %230

230:                                              ; preds = %229, %230
  %231 = phi i64 [ %240, %230 ], [ 0, %229 ]
  %232 = getelementptr inbounds ptr, ptr %1, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !35
  %234 = getelementptr inbounds i32, ptr %233, i64 %115
  %235 = load i32, ptr %234, align 4, !tbaa !50
  %236 = mul nsw i32 %235, %215
  %237 = getelementptr inbounds i32, ptr %233, i64 %206
  %238 = load i32, ptr %237, align 4, !tbaa !50
  %239 = add nsw i32 %238, %236
  store i32 %239, ptr %237, align 4, !tbaa !50
  %240 = add nuw nsw i64 %231, 1
  %241 = icmp eq i64 %240, %86
  br i1 %241, label %242, label %230, !llvm.loop !75

242:                                              ; preds = %230, %229, %214
  %243 = add nuw nsw i64 %206, 1
  %244 = icmp eq i64 %243, %84
  br i1 %244, label %147, label %205, !llvm.loop !82

245:                                              ; preds = %334, %301
  %246 = icmp sgt i64 %250, 1
  %247 = add nsw i64 %251, -1
  %248 = add nsw i32 %252, -1
  br i1 %246, label %249, label %338, !llvm.loop !83

249:                                              ; preds = %102, %245
  %250 = phi i64 [ %107, %102 ], [ %256, %245 ]
  %251 = phi i64 [ %106, %102 ], [ %247, %245 ]
  %252 = phi i32 [ %105, %102 ], [ %248, %245 ]
  %253 = phi i64 [ %104, %102 ], [ %257, %245 ]
  %254 = phi i32 [ 1, %102 ], [ %265, %245 ]
  %255 = zext i32 %252 to i64
  %256 = add nsw i64 %250, -1
  %257 = add nsw i64 %253, -1
  %258 = getelementptr inbounds ptr, ptr %39, i64 %256
  %259 = load ptr, ptr %258, align 8, !tbaa !35
  %260 = getelementptr inbounds i32, ptr %259, i64 %256
  %261 = load i32, ptr %260, align 4, !tbaa !50
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %249
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @.str.2) #21
  br label %264

264:                                              ; preds = %263, %249
  %265 = mul nsw i32 %261, %254
  %266 = icmp eq i32 %261, 1
  br i1 %266, label %301, label %267

267:                                              ; preds = %264
  %268 = icmp sgt i64 %250, 1
  br i1 %268, label %271, label %269

269:                                              ; preds = %282, %267
  %270 = icmp slt i64 %250, %108
  br i1 %270, label %285, label %300

271:                                              ; preds = %267, %282
  %272 = phi i64 [ %283, %282 ], [ 0, %267 ]
  br label %273

273:                                              ; preds = %271, %273
  %274 = phi i64 [ 0, %271 ], [ %280, %273 ]
  %275 = getelementptr inbounds ptr, ptr %1, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !35
  %277 = getelementptr inbounds i32, ptr %276, i64 %272
  %278 = load i32, ptr %277, align 4, !tbaa !50
  %279 = mul nsw i32 %278, %261
  store i32 %279, ptr %277, align 4, !tbaa !50
  %280 = add nuw nsw i64 %274, 1
  %281 = icmp eq i64 %280, %109
  br i1 %281, label %282, label %273, !llvm.loop !77

282:                                              ; preds = %273
  %283 = add nuw nsw i64 %272, 1
  %284 = icmp eq i64 %283, %251
  br i1 %284, label %269, label %271, !llvm.loop !84

285:                                              ; preds = %269, %296
  %286 = phi i64 [ %297, %296 ], [ %253, %269 ]
  br label %287

287:                                              ; preds = %285, %287
  %288 = phi i64 [ 0, %285 ], [ %294, %287 ]
  %289 = getelementptr inbounds ptr, ptr %1, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !35
  %291 = getelementptr inbounds i32, ptr %290, i64 %286
  %292 = load i32, ptr %291, align 4, !tbaa !50
  %293 = mul nsw i32 %292, %261
  store i32 %293, ptr %291, align 4, !tbaa !50
  %294 = add nuw nsw i64 %288, 1
  %295 = icmp eq i64 %294, %110
  br i1 %295, label %296, label %287, !llvm.loop !77

296:                                              ; preds = %287
  %297 = add nsw i64 %286, 1
  %298 = trunc i64 %297 to i32
  %299 = icmp slt i32 %298, %2
  br i1 %299, label %285, label %300, !llvm.loop !85

300:                                              ; preds = %296, %269
  store i32 1, ptr %260, align 4, !tbaa !50
  br label %301

301:                                              ; preds = %300, %264
  %302 = icmp sgt i64 %250, 1
  br i1 %302, label %303, label %245

303:                                              ; preds = %301, %334
  %304 = phi i64 [ %335, %334 ], [ %255, %301 ]
  %305 = getelementptr inbounds i32, ptr %259, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !50
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %334, label %308

308:                                              ; preds = %303
  %309 = sub nsw i32 0, %306
  br label %310

310:                                              ; preds = %308, %310
  %311 = phi i64 [ 0, %308 ], [ %320, %310 ]
  %312 = getelementptr inbounds ptr, ptr %39, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !35
  %314 = getelementptr inbounds i32, ptr %313, i64 %256
  %315 = load i32, ptr %314, align 4, !tbaa !50
  %316 = mul nsw i32 %315, %309
  %317 = getelementptr inbounds i32, ptr %313, i64 %304
  %318 = load i32, ptr %317, align 4, !tbaa !50
  %319 = add nsw i32 %318, %316
  store i32 %319, ptr %317, align 4, !tbaa !50
  %320 = add nuw nsw i64 %311, 1
  %321 = icmp eq i64 %320, %111
  br i1 %321, label %322, label %310, !llvm.loop !75

322:                                              ; preds = %310, %322
  %323 = phi i64 [ %332, %322 ], [ 0, %310 ]
  %324 = getelementptr inbounds ptr, ptr %1, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !35
  %326 = getelementptr inbounds i32, ptr %325, i64 %256
  %327 = load i32, ptr %326, align 4, !tbaa !50
  %328 = mul nsw i32 %327, %309
  %329 = getelementptr inbounds i32, ptr %325, i64 %304
  %330 = load i32, ptr %329, align 4, !tbaa !50
  %331 = add nsw i32 %330, %328
  store i32 %331, ptr %329, align 4, !tbaa !50
  %332 = add nuw nsw i64 %323, 1
  %333 = icmp eq i64 %332, %112
  br i1 %333, label %334, label %322, !llvm.loop !75

334:                                              ; preds = %322, %303
  %335 = add nsw i64 %304, -1
  %336 = trunc i64 %304 to i32
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %303, label %245, !llvm.loop !86

338:                                              ; preds = %245, %100, %5, %26
  %339 = phi i32 [ %27, %26 ], [ %24, %5 ], [ 1, %100 ], [ %265, %245 ]
  ret i32 %339
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lambda_matrix_hermite(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = zext nneg i32 %1 to i64
  br label %15

10:                                               ; preds = %15, %4
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %10
  %13 = zext nneg i32 %1 to i64
  %14 = zext nneg i32 %1 to i64
  br label %23

15:                                               ; preds = %6, %15
  %16 = phi i64 [ 0, %6 ], [ %21, %15 ]
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %2, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %18, i64 %8, i1 false)
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %10, label %15, !llvm.loop !55

23:                                               ; preds = %12, %48
  %24 = phi i64 [ 0, %12 ], [ %49, %48 ]
  %25 = getelementptr inbounds ptr, ptr %3, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  br label %41

27:                                               ; preds = %48, %10
  %28 = icmp sgt i32 %1, 0
  br i1 %28, label %29, label %178

29:                                               ; preds = %27
  %30 = zext nneg i32 %1 to i64
  %31 = zext nneg i32 %1 to i64
  %32 = zext nneg i32 %1 to i64
  %33 = zext nneg i32 %1 to i64
  %34 = zext nneg i32 %1 to i64
  %35 = zext nneg i32 %1 to i64
  %36 = zext nneg i32 %1 to i64
  %37 = zext nneg i32 %1 to i64
  %38 = zext nneg i32 %1 to i64
  %39 = zext nneg i32 %1 to i64
  %40 = zext nneg i32 %1 to i64
  br label %54

41:                                               ; preds = %23, %41
  %42 = phi i64 [ 0, %23 ], [ %46, %41 ]
  %43 = icmp eq i64 %24, %42
  %44 = zext i1 %43 to i32
  %45 = getelementptr inbounds i32, ptr %26, i64 %42
  store i32 %44, ptr %45, align 4, !tbaa !50
  %46 = add nuw nsw i64 %42, 1
  %47 = icmp eq i64 %46, %14
  br i1 %47, label %48, label %41, !llvm.loop !56

48:                                               ; preds = %41
  %49 = add nuw nsw i64 %24, 1
  %50 = icmp eq i64 %49, %13
  br i1 %50, label %27, label %23, !llvm.loop !57

51:                                               ; preds = %89, %91, %59
  %52 = add nuw nsw i64 %55, 1
  %53 = icmp eq i64 %60, %31
  br i1 %53, label %178, label %54

54:                                               ; preds = %29, %51
  %55 = phi i64 [ 1, %29 ], [ %52, %51 ]
  %56 = phi i64 [ 0, %29 ], [ %60, %51 ]
  %57 = getelementptr inbounds ptr, ptr %2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  br label %62

59:                                               ; preds = %86
  %60 = add nuw nsw i64 %56, 1
  %61 = icmp ult i64 %60, %30
  br i1 %61, label %90, label %51

62:                                               ; preds = %54, %86
  %63 = phi i64 [ %56, %54 ], [ %87, %86 ]
  %64 = getelementptr inbounds i32, ptr %58, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !50
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %62, %67
  %68 = phi i64 [ %74, %67 ], [ 0, %62 ]
  %69 = getelementptr inbounds ptr, ptr %2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = getelementptr inbounds i32, ptr %70, i64 %63
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = sub nsw i32 0, %72
  store i32 %73, ptr %71, align 4, !tbaa !50
  %74 = add nuw nsw i64 %68, 1
  %75 = icmp eq i64 %74, %33
  br i1 %75, label %76, label %67, !llvm.loop !76

76:                                               ; preds = %67
  %77 = getelementptr inbounds ptr, ptr %3, i64 %63
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi i64 [ 0, %76 ], [ %84, %79 ]
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !50
  %83 = sub nsw i32 0, %82
  store i32 %83, ptr %81, align 4, !tbaa !50
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp eq i64 %84, %34
  br i1 %85, label %86, label %79, !llvm.loop !60

86:                                               ; preds = %79, %62
  %87 = add nuw nsw i64 %63, 1
  %88 = icmp eq i64 %87, %32
  br i1 %88, label %59, label %62, !llvm.loop !87

89:                                               ; preds = %175
  br i1 %61, label %90, label %51, !llvm.loop !88

90:                                               ; preds = %59, %89
  br label %94

91:                                               ; preds = %94
  %92 = add nuw nsw i64 %95, 1
  %93 = icmp eq i64 %92, %35
  br i1 %93, label %51, label %94, !llvm.loop !80

94:                                               ; preds = %90, %91
  %95 = phi i64 [ %55, %90 ], [ %92, %91 ]
  %96 = getelementptr inbounds i32, ptr %58, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !50
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %91, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds ptr, ptr %3, i64 %56
  %101 = getelementptr inbounds i32, ptr %58, i64 %56
  br label %102

102:                                              ; preds = %99, %117
  %103 = phi i64 [ %56, %99 ], [ %119, %117 ]
  %104 = phi i32 [ -1, %99 ], [ %118, %117 ]
  %105 = getelementptr inbounds i32, ptr %58, i64 %103
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %102
  %109 = icmp slt i32 %104, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %108
  %111 = zext nneg i32 %104 to i64
  %112 = getelementptr inbounds i32, ptr %58, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !50
  %114 = icmp slt i32 %106, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110, %108
  %116 = trunc i64 %103 to i32
  br label %117

117:                                              ; preds = %115, %110, %102
  %118 = phi i32 [ %116, %115 ], [ %104, %110 ], [ %104, %102 ]
  %119 = add nuw nsw i64 %103, 1
  %120 = icmp eq i64 %119, %36
  br i1 %120, label %121, label %102, !llvm.loop !81

121:                                              ; preds = %117
  %122 = icmp sgt i32 %118, -1
  br i1 %122, label %124, label %123

123:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 352, ptr noundef nonnull @.str.2) #21
  br label %124

124:                                              ; preds = %123, %121
  %125 = sext i32 %118 to i64
  br label %126

126:                                              ; preds = %124, %126
  %127 = phi i64 [ 0, %124 ], [ %134, %126 ]
  %128 = getelementptr inbounds ptr, ptr %2, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  %130 = getelementptr inbounds i32, ptr %129, i64 %56
  %131 = load i32, ptr %130, align 4, !tbaa !50
  %132 = getelementptr inbounds i32, ptr %129, i64 %125
  %133 = load i32, ptr %132, align 4, !tbaa !50
  store i32 %133, ptr %130, align 4, !tbaa !50
  store i32 %131, ptr %132, align 4, !tbaa !50
  %134 = add nuw nsw i64 %127, 1
  %135 = icmp eq i64 %134, %37
  br i1 %135, label %136, label %126, !llvm.loop !74

136:                                              ; preds = %126
  %137 = load ptr, ptr %100, align 8, !tbaa !35
  %138 = sext i32 %118 to i64
  %139 = getelementptr inbounds ptr, ptr %3, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !35
  store ptr %140, ptr %100, align 8, !tbaa !35
  store ptr %137, ptr %139, align 8, !tbaa !35
  br label %141

141:                                              ; preds = %136, %175
  %142 = phi i64 [ %55, %136 ], [ %176, %175 ]
  %143 = getelementptr inbounds i32, ptr %58, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !50
  %145 = load i32, ptr %101, align 4, !tbaa !50
  %146 = sdiv i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %175, label %148

148:                                              ; preds = %141, %148
  %149 = phi i64 [ %158, %148 ], [ 0, %141 ]
  %150 = getelementptr inbounds ptr, ptr %2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !35
  %152 = getelementptr inbounds i32, ptr %151, i64 %56
  %153 = load i32, ptr %152, align 4, !tbaa !50
  %154 = mul i32 %153, %146
  %155 = getelementptr inbounds i32, ptr %151, i64 %142
  %156 = load i32, ptr %155, align 4, !tbaa !50
  %157 = sub i32 %156, %154
  store i32 %157, ptr %155, align 4, !tbaa !50
  %158 = add nuw nsw i64 %149, 1
  %159 = icmp eq i64 %158, %39
  br i1 %159, label %160, label %148, !llvm.loop !75

160:                                              ; preds = %148
  br i1 %147, label %175, label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds ptr, ptr %3, i64 %142
  %163 = load ptr, ptr %162, align 8, !tbaa !35
  %164 = load ptr, ptr %100, align 8, !tbaa !35
  br label %165

165:                                              ; preds = %161, %165
  %166 = phi i64 [ 0, %161 ], [ %173, %165 ]
  %167 = getelementptr inbounds i32, ptr %163, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !50
  %169 = mul nsw i32 %168, %146
  %170 = getelementptr inbounds i32, ptr %164, i64 %166
  %171 = load i32, ptr %170, align 4, !tbaa !50
  %172 = add nsw i32 %171, %169
  store i32 %172, ptr %170, align 4, !tbaa !50
  %173 = add nuw nsw i64 %166, 1
  %174 = icmp eq i64 %173, %40
  br i1 %174, label %175, label %165, !llvm.loop !72

175:                                              ; preds = %165, %160, %141
  %176 = add nuw nsw i64 %142, 1
  %177 = icmp eq i64 %176, %38
  br i1 %177, label %89, label %141, !llvm.loop !89

178:                                              ; preds = %51, %27
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_right_hermite(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = sext i32 %2 to i64
  %9 = shl nsw i64 %8, 2
  %10 = zext nneg i32 %1 to i64
  br label %16

11:                                               ; preds = %16, %5
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = zext nneg i32 %1 to i64
  %15 = zext nneg i32 %1 to i64
  br label %24

16:                                               ; preds = %7, %16
  %17 = phi i64 [ 0, %7 ], [ %22, %16 ]
  %18 = getelementptr inbounds ptr, ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %3, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %19, i64 %9, i1 false)
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %16, !llvm.loop !55

24:                                               ; preds = %13, %43
  %25 = phi i64 [ 0, %13 ], [ %44, %43 ]
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  br label %36

28:                                               ; preds = %43, %11
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %30, label %136

30:                                               ; preds = %28
  %31 = icmp slt i32 %1, 1
  %32 = sext i32 %1 to i64
  %33 = zext nneg i32 %2 to i64
  %34 = zext nneg i32 %2 to i64
  %35 = zext i32 %1 to i64
  br label %46

36:                                               ; preds = %24, %36
  %37 = phi i64 [ 0, %24 ], [ %41, %36 ]
  %38 = icmp eq i64 %25, %37
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds i32, ptr %27, i64 %37
  store i32 %39, ptr %40, align 4, !tbaa !50
  %41 = add nuw nsw i64 %37, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %36, !llvm.loop !56

43:                                               ; preds = %36
  %44 = add nuw nsw i64 %25, 1
  %45 = icmp eq i64 %44, %14
  br i1 %45, label %28, label %24, !llvm.loop !57

46:                                               ; preds = %30, %132
  %47 = phi i64 [ 0, %30 ], [ %134, %132 ]
  %48 = phi i32 [ 0, %30 ], [ %133, %132 ]
  %49 = getelementptr inbounds ptr, ptr %3, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = icmp slt i32 %48, %1
  br i1 %51, label %52, label %132

52:                                               ; preds = %46
  %53 = sext i32 %48 to i64
  br label %58

54:                                               ; preds = %58
  %55 = add nsw i64 %59, 1
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %132, label %58, !llvm.loop !80

58:                                               ; preds = %52, %54
  %59 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %60 = getelementptr inbounds i32, ptr %50, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %54, label %63

63:                                               ; preds = %58
  %64 = add nsw i32 %48, 1
  %65 = icmp slt i32 %64, %1
  br i1 %65, label %66, label %132

66:                                               ; preds = %63
  %67 = sext i32 %64 to i64
  br label %70

68:                                               ; preds = %125, %70
  %69 = icmp sgt i64 %72, %67
  br i1 %69, label %70, label %132, !llvm.loop !90

70:                                               ; preds = %66, %68
  %71 = phi i64 [ %32, %66 ], [ %72, %68 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds ptr, ptr %3, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = getelementptr inbounds i32, ptr %74, i64 %47
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %68, label %78

78:                                               ; preds = %70
  %79 = add nsw i64 %71, -2
  %80 = getelementptr inbounds ptr, ptr %3, i64 %79
  %81 = getelementptr inbounds ptr, ptr %4, i64 %72
  %82 = getelementptr inbounds ptr, ptr %4, i64 %79
  %83 = getelementptr inbounds ptr, ptr %4, i64 %72
  %84 = getelementptr inbounds ptr, ptr %4, i64 %79
  br label %85

85:                                               ; preds = %78, %125
  %86 = phi i32 [ %76, %78 ], [ %130, %125 ]
  %87 = phi ptr [ %74, %78 ], [ %128, %125 ]
  %88 = load ptr, ptr %80, align 8, !tbaa !35
  %89 = getelementptr inbounds i32, ptr %88, i64 %47
  %90 = load i32, ptr %89, align 4, !tbaa !50
  %91 = mul nsw i32 %90, %86
  %92 = tail call i32 @llvm.abs.i32(i32 %90, i1 true)
  %93 = tail call i32 @llvm.abs.i32(i32 %86, i1 true)
  %94 = udiv i32 %92, %93
  %95 = sub nsw i32 0, %94
  %96 = icmp slt i32 %91, 0
  %97 = select i1 %96, i32 %94, i32 %95
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %124, label %99

99:                                               ; preds = %85, %99
  %100 = phi i64 [ %107, %99 ], [ 0, %85 ]
  %101 = getelementptr inbounds i32, ptr %87, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !50
  %103 = mul nsw i32 %102, %97
  %104 = getelementptr inbounds i32, ptr %88, i64 %100
  %105 = load i32, ptr %104, align 4, !tbaa !50
  %106 = add nsw i32 %105, %103
  store i32 %106, ptr %104, align 4, !tbaa !50
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, %34
  br i1 %108, label %109, label %99, !llvm.loop !72

109:                                              ; preds = %99
  store ptr %88, ptr %73, align 8, !tbaa !35
  store ptr %87, ptr %80, align 8, !tbaa !35
  %110 = or i1 %98, %31
  br i1 %110, label %125, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %81, align 8, !tbaa !35
  %113 = load ptr, ptr %82, align 8, !tbaa !35
  br label %114

114:                                              ; preds = %111, %114
  %115 = phi i64 [ 0, %111 ], [ %122, %114 ]
  %116 = getelementptr inbounds i32, ptr %112, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !50
  %118 = mul nsw i32 %117, %97
  %119 = getelementptr inbounds i32, ptr %113, i64 %115
  %120 = load i32, ptr %119, align 4, !tbaa !50
  %121 = add nsw i32 %120, %118
  store i32 %121, ptr %119, align 4, !tbaa !50
  %122 = add nuw nsw i64 %115, 1
  %123 = icmp eq i64 %122, %35
  br i1 %123, label %125, label %114, !llvm.loop !72

124:                                              ; preds = %85
  store ptr %88, ptr %73, align 8, !tbaa !35
  store ptr %87, ptr %80, align 8, !tbaa !35
  br label %125

125:                                              ; preds = %114, %109, %124
  %126 = load ptr, ptr %83, align 8, !tbaa !35
  %127 = load ptr, ptr %84, align 8, !tbaa !35
  store ptr %127, ptr %83, align 8, !tbaa !35
  store ptr %126, ptr %84, align 8, !tbaa !35
  %128 = load ptr, ptr %73, align 8, !tbaa !35
  %129 = getelementptr inbounds i32, ptr %128, i64 %47
  %130 = load i32, ptr %129, align 4, !tbaa !50
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %68, label %85, !llvm.loop !91

132:                                              ; preds = %54, %68, %46, %63
  %133 = phi i32 [ %64, %63 ], [ %48, %46 ], [ %64, %68 ], [ %48, %54 ]
  %134 = add nuw nsw i64 %47, 1
  %135 = icmp eq i64 %134, %33
  br i1 %135, label %136, label %46, !llvm.loop !92

136:                                              ; preds = %132, %28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_left_hermite(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = sext i32 %2 to i64
  %9 = shl nsw i64 %8, 2
  %10 = zext nneg i32 %1 to i64
  br label %16

11:                                               ; preds = %16, %5
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = zext nneg i32 %1 to i64
  %15 = zext nneg i32 %1 to i64
  br label %24

16:                                               ; preds = %7, %16
  %17 = phi i64 [ 0, %7 ], [ %22, %16 ]
  %18 = getelementptr inbounds ptr, ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %3, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %19, i64 %9, i1 false)
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %16, !llvm.loop !55

24:                                               ; preds = %13, %45
  %25 = phi i64 [ 0, %13 ], [ %46, %45 ]
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  br label %38

28:                                               ; preds = %45, %11
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %30, label %142

30:                                               ; preds = %28
  %31 = icmp slt i32 %1, 1
  %32 = icmp sgt i32 %1, 0
  %33 = sext i32 %1 to i64
  %34 = zext nneg i32 %2 to i64
  %35 = zext nneg i32 %2 to i64
  %36 = zext i32 %1 to i64
  %37 = zext nneg i32 %1 to i64
  br label %48

38:                                               ; preds = %24, %38
  %39 = phi i64 [ 0, %24 ], [ %43, %38 ]
  %40 = icmp eq i64 %25, %39
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds i32, ptr %27, i64 %39
  store i32 %41, ptr %42, align 4, !tbaa !50
  %43 = add nuw nsw i64 %39, 1
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %45, label %38, !llvm.loop !56

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %25, 1
  %47 = icmp eq i64 %46, %14
  br i1 %47, label %28, label %24, !llvm.loop !57

48:                                               ; preds = %30, %138
  %49 = phi i64 [ 0, %30 ], [ %140, %138 ]
  %50 = phi i32 [ 0, %30 ], [ %139, %138 ]
  %51 = getelementptr inbounds ptr, ptr %3, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = icmp slt i32 %50, %1
  br i1 %53, label %54, label %138

54:                                               ; preds = %48
  %55 = sext i32 %50 to i64
  br label %60

56:                                               ; preds = %60
  %57 = add nsw i64 %61, 1
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, %1
  br i1 %59, label %138, label %60, !llvm.loop !80

60:                                               ; preds = %54, %56
  %61 = phi i64 [ %55, %54 ], [ %57, %56 ]
  %62 = getelementptr inbounds i32, ptr %52, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %56, label %65

65:                                               ; preds = %60
  %66 = add nsw i32 %50, 1
  %67 = icmp slt i32 %66, %1
  br i1 %67, label %68, label %138

68:                                               ; preds = %65
  %69 = sext i32 %66 to i64
  br label %72

70:                                               ; preds = %84, %72
  %71 = icmp sgt i64 %74, %69
  br i1 %71, label %72, label %138, !llvm.loop !93

72:                                               ; preds = %68, %70
  %73 = phi i64 [ %33, %68 ], [ %74, %70 ]
  %74 = add nsw i64 %73, -1
  %75 = getelementptr inbounds ptr, ptr %3, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = getelementptr inbounds i32, ptr %76, i64 %49
  %78 = load i32, ptr %77, align 4, !tbaa !50
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %70, label %80

80:                                               ; preds = %72
  %81 = add nsw i64 %73, -2
  %82 = getelementptr inbounds ptr, ptr %3, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  br label %88

84:                                               ; preds = %128, %127
  %85 = getelementptr inbounds i32, ptr %89, i64 %49
  %86 = load i32, ptr %85, align 4, !tbaa !50
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %70, label %88, !llvm.loop !94

88:                                               ; preds = %80, %84
  %89 = phi ptr [ %83, %80 ], [ %91, %84 ]
  %90 = phi i32 [ %78, %80 ], [ %86, %84 ]
  %91 = phi ptr [ %76, %80 ], [ %89, %84 ]
  %92 = getelementptr inbounds i32, ptr %89, i64 %49
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = mul nsw i32 %93, %90
  %95 = tail call i32 @llvm.abs.i32(i32 %93, i1 true)
  %96 = tail call i32 @llvm.abs.i32(i32 %90, i1 true)
  %97 = udiv i32 %95, %96
  %98 = sub nsw i32 0, %97
  %99 = icmp slt i32 %94, 0
  %100 = select i1 %99, i32 %98, i32 %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %88, %102
  %103 = phi i64 [ %110, %102 ], [ 0, %88 ]
  %104 = getelementptr inbounds i32, ptr %91, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !50
  %106 = mul i32 %105, %100
  %107 = getelementptr inbounds i32, ptr %89, i64 %103
  %108 = load i32, ptr %107, align 4, !tbaa !50
  %109 = sub i32 %108, %106
  store i32 %109, ptr %107, align 4, !tbaa !50
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, %35
  br i1 %111, label %112, label %102, !llvm.loop !72

112:                                              ; preds = %102
  store ptr %89, ptr %75, align 8, !tbaa !35
  store ptr %91, ptr %82, align 8, !tbaa !35
  %113 = or i1 %101, %31
  br i1 %113, label %127, label %115

114:                                              ; preds = %88
  store ptr %89, ptr %75, align 8, !tbaa !35
  store ptr %91, ptr %82, align 8, !tbaa !35
  br label %127

115:                                              ; preds = %112, %115
  %116 = phi i64 [ %125, %115 ], [ 0, %112 ]
  %117 = getelementptr inbounds ptr, ptr %4, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = getelementptr inbounds i32, ptr %118, i64 %81
  %120 = load i32, ptr %119, align 4, !tbaa !50
  %121 = mul nsw i32 %120, %100
  %122 = getelementptr inbounds i32, ptr %118, i64 %74
  %123 = load i32, ptr %122, align 4, !tbaa !50
  %124 = add nsw i32 %123, %121
  store i32 %124, ptr %122, align 4, !tbaa !50
  %125 = add nuw nsw i64 %116, 1
  %126 = icmp eq i64 %125, %36
  br i1 %126, label %127, label %115, !llvm.loop !75

127:                                              ; preds = %115, %112, %114
  br i1 %32, label %128, label %84

128:                                              ; preds = %127, %128
  %129 = phi i64 [ %136, %128 ], [ 0, %127 ]
  %130 = getelementptr inbounds ptr, ptr %4, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = getelementptr inbounds i32, ptr %131, i64 %74
  %133 = load i32, ptr %132, align 4, !tbaa !50
  %134 = getelementptr inbounds i32, ptr %131, i64 %81
  %135 = load i32, ptr %134, align 4, !tbaa !50
  store i32 %135, ptr %132, align 4, !tbaa !50
  store i32 %133, ptr %134, align 4, !tbaa !50
  %136 = add nuw nsw i64 %129, 1
  %137 = icmp eq i64 %136, %37
  br i1 %137, label %84, label %128, !llvm.loop !74

138:                                              ; preds = %56, %70, %48, %65
  %139 = phi i32 [ %66, %65 ], [ %50, %48 ], [ %66, %70 ], [ %50, %56 ]
  %140 = add nuw nsw i64 %49, 1
  %141 = icmp eq i64 %140, %34
  br i1 %141, label %142, label %48, !llvm.loop !95

142:                                              ; preds = %138, %28
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lambda_matrix_first_nz_vec(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 !prof !34 {
  %5 = icmp slt i32 %3, %1
  br i1 %5, label %6, label %34

6:                                                ; preds = %4
  %7 = icmp sge i32 %3, %2
  %8 = sext i32 %3 to i64
  %9 = sext i32 %1 to i64
  %10 = sext i32 %2 to i64
  br label %11

11:                                               ; preds = %6, %26
  %12 = phi i64 [ %8, %6 ], [ %28, %26 ]
  %13 = phi i8 [ 0, %6 ], [ %27, %26 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  %17 = or i1 %16, %7
  br i1 %17, label %26, label %21

18:                                               ; preds = %21
  %19 = add nsw i64 %22, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %26, label %21, !llvm.loop !80

21:                                               ; preds = %11, %18
  %22 = phi i64 [ %19, %18 ], [ %8, %11 ]
  %23 = getelementptr inbounds i32, ptr %15, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %18, label %26

26:                                               ; preds = %18, %21, %11
  %27 = phi i8 [ %13, %11 ], [ 1, %21 ], [ %13, %18 ]
  %28 = add nsw i64 %12, 1
  %29 = icmp slt i64 %28, %9
  %30 = icmp eq i8 %27, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %11, label %32, !llvm.loop !96

32:                                               ; preds = %26
  %33 = trunc i64 %28 to i32
  br label %34

34:                                               ; preds = %32, %4
  %35 = phi i32 [ %3, %4 ], [ %33, %32 ]
  %36 = phi i1 [ true, %4 ], [ %30, %32 ]
  %37 = add nsw i32 %35, -1
  %38 = select i1 %36, i32 %1, i32 %37
  ret i32 %38
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lambda_matrix_project_to_null(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #8 !prof !34 {
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @ggc_alloc_stat(i64 noundef %7) #21
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = shl nuw nsw i64 %6, 2
  %12 = zext nneg i32 %2 to i64
  br label %19

13:                                               ; preds = %19, %5
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %13
  %16 = icmp sgt i32 %1, 0
  %17 = zext nneg i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %25

19:                                               ; preds = %10, %19
  %20 = phi i64 [ 0, %10 ], [ %23, %19 ]
  %21 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %11) #21
  %22 = getelementptr inbounds ptr, ptr %8, i64 %20
  store ptr %21, ptr %22, align 8, !tbaa !35
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %13, label %19, !llvm.loop !54

25:                                               ; preds = %15, %39
  %26 = phi i64 [ 0, %15 ], [ %40, %39 ]
  br i1 %16, label %27, label %39

27:                                               ; preds = %25
  %28 = getelementptr inbounds ptr, ptr %8, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi i64 [ 0, %27 ], [ %37, %30 ]
  %32 = getelementptr inbounds ptr, ptr %0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds i32, ptr %33, i64 %26
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = getelementptr inbounds i32, ptr %29, i64 %31
  store i32 %35, ptr %36, align 4, !tbaa !50
  %37 = add nuw nsw i64 %31, 1
  %38 = icmp eq i64 %37, %18
  br i1 %38, label %39, label %30, !llvm.loop !62

39:                                               ; preds = %30, %25
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, %17
  br i1 %41, label %42, label %25, !llvm.loop !63

42:                                               ; preds = %39, %13
  %43 = tail call ptr @ggc_alloc_stat(i64 noundef %7) #21
  %44 = icmp sgt i32 %2, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = shl nuw nsw i64 %6, 2
  %47 = zext nneg i32 %2 to i64
  br label %55

48:                                               ; preds = %55, %42
  %49 = icmp sgt i32 %1, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %48
  %51 = icmp sgt i32 %2, 0
  %52 = zext nneg i32 %1 to i64
  %53 = zext nneg i32 %1 to i64
  %54 = zext nneg i32 %2 to i64
  br label %61

55:                                               ; preds = %45, %55
  %56 = phi i64 [ 0, %45 ], [ %59, %55 ]
  %57 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %46) #21
  %58 = getelementptr inbounds ptr, ptr %43, i64 %56
  store ptr %57, ptr %58, align 8, !tbaa !35
  %59 = add nuw nsw i64 %56, 1
  %60 = icmp eq i64 %59, %47
  br i1 %60, label %48, label %55, !llvm.loop !54

61:                                               ; preds = %50, %88
  %62 = phi i64 [ 0, %50 ], [ %89, %88 ]
  %63 = getelementptr inbounds ptr, ptr %43, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = getelementptr inbounds ptr, ptr %0, i64 %62
  br label %66

66:                                               ; preds = %61, %85
  %67 = phi i64 [ 0, %61 ], [ %86, %85 ]
  %68 = getelementptr inbounds i32, ptr %64, i64 %67
  store i32 0, ptr %68, align 4, !tbaa !50
  br i1 %51, label %69, label %85

69:                                               ; preds = %66
  %70 = load ptr, ptr %65, align 8, !tbaa !35
  %71 = load i32, ptr %68, align 4, !tbaa !50
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ 0, %69 ], [ %83, %72 ]
  %74 = phi i32 [ %71, %69 ], [ %82, %72 ]
  %75 = getelementptr inbounds i32, ptr %70, i64 %73
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = getelementptr inbounds ptr, ptr %8, i64 %73
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = getelementptr inbounds i32, ptr %78, i64 %67
  %80 = load i32, ptr %79, align 4, !tbaa !50
  %81 = mul nsw i32 %80, %76
  %82 = add nsw i32 %74, %81
  store i32 %82, ptr %68, align 4, !tbaa !50
  %83 = add nuw nsw i64 %73, 1
  %84 = icmp eq i64 %83, %54
  br i1 %84, label %85, label %72, !llvm.loop !68

85:                                               ; preds = %72, %66
  %86 = add nuw nsw i64 %67, 1
  %87 = icmp eq i64 %86, %53
  br i1 %87, label %88, label %66, !llvm.loop !69

88:                                               ; preds = %85
  %89 = add nuw nsw i64 %62, 1
  %90 = icmp eq i64 %89, %52
  br i1 %90, label %91, label %61, !llvm.loop !70

91:                                               ; preds = %88, %48
  %92 = tail call ptr @ggc_alloc_stat(i64 noundef %7) #21
  %93 = icmp sgt i32 %2, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = shl nuw nsw i64 %6, 2
  %96 = zext nneg i32 %2 to i64
  br label %97

97:                                               ; preds = %94, %97
  %98 = phi i64 [ 0, %94 ], [ %101, %97 ]
  %99 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %95) #21
  %100 = getelementptr inbounds ptr, ptr %92, i64 %98
  store ptr %99, ptr %100, align 8, !tbaa !35
  %101 = add nuw nsw i64 %98, 1
  %102 = icmp eq i64 %101, %96
  br i1 %102, label %103, label %97, !llvm.loop !54

103:                                              ; preds = %97, %91
  %104 = tail call i32 @lambda_matrix_inverse(ptr noundef %43, ptr noundef %92, i32 noundef %1)
  %105 = icmp sgt i32 %2, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = icmp sgt i32 %1, 0
  %108 = zext nneg i32 %2 to i64
  %109 = zext nneg i32 %1 to i64
  %110 = zext nneg i32 %1 to i64
  br label %111

111:                                              ; preds = %106, %144
  %112 = phi i64 [ 0, %106 ], [ %145, %144 ]
  br i1 %107, label %113, label %144

113:                                              ; preds = %111
  %114 = getelementptr inbounds ptr, ptr %43, i64 %112
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = getelementptr inbounds ptr, ptr %8, i64 %112
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  br label %125

118:                                              ; preds = %144, %103
  %119 = icmp sgt i32 %2, 0
  br i1 %119, label %120, label %152

120:                                              ; preds = %118
  %121 = icmp sgt i32 %1, 0
  %122 = zext nneg i32 %2 to i64
  %123 = zext nneg i32 %2 to i64
  %124 = zext nneg i32 %1 to i64
  br label %147

125:                                              ; preds = %113, %141
  %126 = phi i64 [ 0, %113 ], [ %142, %141 ]
  %127 = getelementptr inbounds i32, ptr %115, i64 %126
  store i32 0, ptr %127, align 4, !tbaa !50
  br label %128

128:                                              ; preds = %125, %128
  %129 = phi i64 [ 0, %125 ], [ %139, %128 ]
  %130 = phi i32 [ 0, %125 ], [ %138, %128 ]
  %131 = getelementptr inbounds i32, ptr %117, i64 %129
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = getelementptr inbounds ptr, ptr %92, i64 %129
  %134 = load ptr, ptr %133, align 8, !tbaa !35
  %135 = getelementptr inbounds i32, ptr %134, i64 %126
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = mul nsw i32 %136, %132
  %138 = add nsw i32 %130, %137
  store i32 %138, ptr %127, align 4, !tbaa !50
  %139 = add nuw nsw i64 %129, 1
  %140 = icmp eq i64 %139, %110
  br i1 %140, label %141, label %128, !llvm.loop !68

141:                                              ; preds = %128
  %142 = add nuw nsw i64 %126, 1
  %143 = icmp eq i64 %142, %109
  br i1 %143, label %144, label %125, !llvm.loop !69

144:                                              ; preds = %141, %111
  %145 = add nuw nsw i64 %112, 1
  %146 = icmp eq i64 %145, %108
  br i1 %146, label %118, label %111, !llvm.loop !70

147:                                              ; preds = %120, %179
  %148 = phi i64 [ 0, %120 ], [ %180, %179 ]
  %149 = getelementptr inbounds ptr, ptr %8, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  %151 = getelementptr inbounds ptr, ptr %43, i64 %148
  br label %157

152:                                              ; preds = %179, %118
  %153 = icmp sgt i32 %2, 0
  br i1 %153, label %154, label %196

154:                                              ; preds = %152
  %155 = zext nneg i32 %2 to i64
  %156 = zext nneg i32 %2 to i64
  br label %182

157:                                              ; preds = %147, %176
  %158 = phi i64 [ 0, %147 ], [ %177, %176 ]
  %159 = getelementptr inbounds i32, ptr %150, i64 %158
  store i32 0, ptr %159, align 4, !tbaa !50
  br i1 %121, label %160, label %176

160:                                              ; preds = %157
  %161 = load ptr, ptr %151, align 8, !tbaa !35
  %162 = load i32, ptr %159, align 4, !tbaa !50
  br label %163

163:                                              ; preds = %160, %163
  %164 = phi i64 [ 0, %160 ], [ %174, %163 ]
  %165 = phi i32 [ %162, %160 ], [ %173, %163 ]
  %166 = getelementptr inbounds i32, ptr %161, i64 %164
  %167 = load i32, ptr %166, align 4, !tbaa !50
  %168 = getelementptr inbounds ptr, ptr %0, i64 %164
  %169 = load ptr, ptr %168, align 8, !tbaa !35
  %170 = getelementptr inbounds i32, ptr %169, i64 %158
  %171 = load i32, ptr %170, align 4, !tbaa !50
  %172 = mul nsw i32 %171, %167
  %173 = add nsw i32 %165, %172
  store i32 %173, ptr %159, align 4, !tbaa !50
  %174 = add nuw nsw i64 %164, 1
  %175 = icmp eq i64 %174, %124
  br i1 %175, label %176, label %163, !llvm.loop !68

176:                                              ; preds = %163, %157
  %177 = add nuw nsw i64 %158, 1
  %178 = icmp eq i64 %177, %123
  br i1 %178, label %179, label %157, !llvm.loop !69

179:                                              ; preds = %176
  %180 = add nuw nsw i64 %148, 1
  %181 = icmp eq i64 %180, %122
  br i1 %181, label %152, label %147, !llvm.loop !70

182:                                              ; preds = %154, %193
  %183 = phi i64 [ 0, %154 ], [ %194, %193 ]
  %184 = getelementptr inbounds ptr, ptr %8, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !35
  br label %186

186:                                              ; preds = %182, %186
  %187 = phi i64 [ 0, %182 ], [ %191, %186 ]
  %188 = getelementptr inbounds i32, ptr %185, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = sub nsw i32 0, %189
  store i32 %190, ptr %188, align 4, !tbaa !50
  %191 = add nuw nsw i64 %187, 1
  %192 = icmp eq i64 %191, %156
  br i1 %192, label %193, label %186, !llvm.loop !60

193:                                              ; preds = %186
  %194 = add nuw nsw i64 %183, 1
  %195 = icmp eq i64 %194, %155
  br i1 %195, label %196, label %182, !llvm.loop !61

196:                                              ; preds = %193, %152
  %197 = tail call ptr @ggc_alloc_stat(i64 noundef %7) #21
  %198 = icmp sgt i32 %2, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = shl nuw nsw i64 %6, 2
  %201 = zext nneg i32 %2 to i64
  br label %207

202:                                              ; preds = %207, %196
  %203 = icmp sgt i32 %2, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %202
  %205 = zext nneg i32 %2 to i64
  %206 = zext nneg i32 %2 to i64
  br label %213

207:                                              ; preds = %199, %207
  %208 = phi i64 [ 0, %199 ], [ %211, %207 ]
  %209 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %200) #21
  %210 = getelementptr inbounds ptr, ptr %197, i64 %208
  store ptr %209, ptr %210, align 8, !tbaa !35
  %211 = add nuw nsw i64 %208, 1
  %212 = icmp eq i64 %211, %201
  br i1 %212, label %202, label %207, !llvm.loop !54

213:                                              ; preds = %204, %229
  %214 = phi i64 [ 0, %204 ], [ %230, %229 ]
  %215 = getelementptr inbounds ptr, ptr %197, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !35
  br label %222

217:                                              ; preds = %229, %202
  %218 = icmp sgt i32 %2, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %217
  %220 = zext nneg i32 %2 to i64
  %221 = zext nneg i32 %2 to i64
  br label %237

222:                                              ; preds = %213, %222
  %223 = phi i64 [ 0, %213 ], [ %227, %222 ]
  %224 = icmp eq i64 %214, %223
  %225 = zext i1 %224 to i32
  %226 = getelementptr inbounds i32, ptr %216, i64 %223
  store i32 %225, ptr %226, align 4, !tbaa !50
  %227 = add nuw nsw i64 %223, 1
  %228 = icmp eq i64 %227, %206
  br i1 %228, label %229, label %222, !llvm.loop !56

229:                                              ; preds = %222
  %230 = add nuw nsw i64 %214, 1
  %231 = icmp eq i64 %230, %205
  br i1 %231, label %217, label %213, !llvm.loop !57

232:                                              ; preds = %256, %217
  %233 = icmp sgt i32 %2, 0
  br i1 %233, label %234, label %269

234:                                              ; preds = %232
  %235 = sext i32 %3 to i64
  %236 = zext nneg i32 %2 to i64
  br label %259

237:                                              ; preds = %219, %256
  %238 = phi i64 [ 0, %219 ], [ %257, %256 ]
  %239 = getelementptr inbounds ptr, ptr %197, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !35
  %241 = getelementptr inbounds ptr, ptr %8, i64 %238
  %242 = load ptr, ptr %241, align 8, !tbaa !35
  %243 = getelementptr inbounds ptr, ptr %43, i64 %238
  %244 = load ptr, ptr %243, align 8, !tbaa !35
  br label %245

245:                                              ; preds = %237, %245
  %246 = phi i64 [ 0, %237 ], [ %254, %245 ]
  %247 = getelementptr inbounds i32, ptr %240, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !50
  %249 = mul nsw i32 %248, %104
  %250 = getelementptr inbounds i32, ptr %242, i64 %246
  %251 = load i32, ptr %250, align 4, !tbaa !50
  %252 = add nsw i32 %249, %251
  %253 = getelementptr inbounds i32, ptr %244, i64 %246
  store i32 %252, ptr %253, align 4, !tbaa !50
  %254 = add nuw nsw i64 %246, 1
  %255 = icmp eq i64 %254, %221
  br i1 %255, label %256, label %245, !llvm.loop !66

256:                                              ; preds = %245
  %257 = add nuw nsw i64 %238, 1
  %258 = icmp eq i64 %257, %220
  br i1 %258, label %232, label %237, !llvm.loop !67

259:                                              ; preds = %234, %259
  %260 = phi i64 [ 0, %234 ], [ %267, %259 ]
  %261 = getelementptr inbounds ptr, ptr %43, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !35
  %263 = getelementptr i32, ptr %262, i64 %235
  %264 = getelementptr i32, ptr %263, i64 -1
  %265 = load i32, ptr %264, align 4, !tbaa !50
  %266 = getelementptr inbounds i32, ptr %4, i64 %260
  store i32 %265, ptr %266, align 4, !tbaa !50
  %267 = add nuw nsw i64 %260, 1
  %268 = icmp eq i64 %267, %236
  br i1 %268, label %269, label %259, !llvm.loop !97

269:                                              ; preds = %259, %232
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lambda_matrix_vector_mult(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #15 !prof !34 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %7, i1 false)
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = icmp sgt i32 %2, 0
  %11 = zext nneg i32 %1 to i64
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %9, %31
  %14 = phi i64 [ 0, %9 ], [ %32, %31 ]
  br i1 %10, label %15, label %31

15:                                               ; preds = %13
  %16 = getelementptr inbounds ptr, ptr %0, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds i32, ptr %4, i64 %14
  %19 = load i32, ptr %18, align 4, !tbaa !50
  br label %20

20:                                               ; preds = %15, %20
  %21 = phi i64 [ 0, %15 ], [ %29, %20 ]
  %22 = phi i32 [ %19, %15 ], [ %28, %20 ]
  %23 = getelementptr inbounds i32, ptr %17, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = getelementptr inbounds i32, ptr %3, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = mul nsw i32 %26, %24
  %28 = add nsw i32 %22, %27
  store i32 %28, ptr %18, align 4, !tbaa !50
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %12
  br i1 %30, label %31, label %20, !llvm.loop !98

31:                                               ; preds = %20, %13
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %34, label %13, !llvm.loop !99

34:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_lambda_matrix(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 !prof !34 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = icmp sgt i32 %3, 0
  %8 = zext nneg i32 %2 to i64
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %6, %21
  %11 = phi i64 [ 0, %6 ], [ %23, %21 ]
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  br i1 %7, label %14, label %21

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %19, %14 ], [ 0, %10 ]
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %17)
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %14, !llvm.loop !100

21:                                               ; preds = %14, %10
  %22 = tail call i32 @fputc(i32 10, ptr %0)
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, %8
  br i1 %24, label %25, label %10, !llvm.loop !101

25:                                               ; preds = %21, %4
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }

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
!57 = distinct !{!57, !52, !53}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52, !53}
!60 = distinct !{!60, !52, !53}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52, !53}
!68 = distinct !{!68, !52, !53}
!69 = distinct !{!69, !52, !53}
!70 = distinct !{!70, !52, !53}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
