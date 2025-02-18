; ModuleID = 'double-int.c'
source_filename = "double-int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.double_int = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.__mpz_struct = type { i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"double-int.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !40
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !39 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !40
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !39 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !50

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !44
  %11 = load i8, ptr %3, align 1, !tbaa !51
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !39 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !50

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !44
  %11 = load i8, ptr %3, align 1, !tbaa !51
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !39 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !50

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !44
  %11 = load i8, ptr %3, align 1, !tbaa !51
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !39 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !40
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !39 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !50

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !52
  store i8 %12, ptr %4, align 1, !tbaa !51
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !39 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !50

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !52
  store i8 %12, ptr %4, align 1, !tbaa !51
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !39 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !50

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !52
  store i8 %12, ptr %4, align 1, !tbaa !51
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !39 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !39 {
  %2 = load i32, ptr %0, align 8, !tbaa !54
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !39 {
  %2 = load i32, ptr %0, align 8, !tbaa !54
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !39 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !39 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !39 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !56

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_mask(i32 noundef %0) local_unnamed_addr #9 !prof !39 {
  %2 = icmp ugt i32 %0, 64
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = add i32 %0, -65
  %5 = zext nneg i32 %4 to i64
  %6 = shl i64 2, %5
  %7 = add i64 %6, -1
  br label %13

8:                                                ; preds = %1
  %9 = add nsw i32 %0, -1
  %10 = zext nneg i32 %9 to i64
  %11 = shl i64 2, %10
  %12 = add i64 %11, -1
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i64 [ -1, %3 ], [ %12, %8 ]
  %15 = phi i64 [ %7, %3 ], [ 0, %8 ]
  %16 = insertvalue { i64, i64 } poison, i64 %14, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_ext(i64 %0, i64 %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #9 !prof !39 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = icmp ugt i32 %2, 64
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = add i32 %2, -65
  %10 = zext nneg i32 %9 to i64
  %11 = shl i64 2, %10
  %12 = add i64 %11, -1
  br label %18

13:                                               ; preds = %6
  %14 = add nsw i32 %2, -1
  %15 = zext nneg i32 %14 to i64
  %16 = shl i64 2, %15
  %17 = add i64 %16, -1
  br label %18

18:                                               ; preds = %8, %13
  %19 = phi i64 [ -1, %8 ], [ %17, %13 ]
  %20 = phi i64 [ %12, %8 ], [ 0, %13 ]
  %21 = and i64 %19, %0
  %22 = and i64 %20, %1
  %23 = insertvalue { i64, i64 } poison, i64 %21, 0
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1
  br label %27

25:                                               ; preds = %4
  %26 = tail call { i64, i64 } @double_int_sext(i64 %0, i64 %1, i32 noundef %2)
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi { i64, i64 } [ %24, %18 ], [ %26, %25 ]
  ret { i64, i64 } %28
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_zext(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #9 !prof !39 {
  %4 = icmp ugt i32 %2, 64
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = add i32 %2, -65
  %7 = zext nneg i32 %6 to i64
  %8 = shl i64 2, %7
  %9 = add i64 %8, -1
  br label %15

10:                                               ; preds = %3
  %11 = add nsw i32 %2, -1
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 2, %12
  %14 = add i64 %13, -1
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi i64 [ -1, %5 ], [ %14, %10 ]
  %17 = phi i64 [ %9, %5 ], [ 0, %10 ]
  %18 = and i64 %16, %0
  %19 = and i64 %17, %1
  %20 = insertvalue { i64, i64 } poison, i64 %18, 0
  %21 = insertvalue { i64, i64 } %20, i64 %19, 1
  ret { i64, i64 } %21
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_sext(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #9 !prof !39 {
  %4 = icmp ugt i32 %2, 64
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = add i32 %2, -65
  %7 = zext nneg i32 %6 to i64
  %8 = shl i64 2, %7
  %9 = add i64 %8, -1
  br label %15

10:                                               ; preds = %3
  %11 = add nsw i32 %2, -1
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 2, %12
  %14 = add i64 %13, -1
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi i64 [ -1, %5 ], [ %14, %10 ]
  %17 = phi i64 [ %9, %5 ], [ 0, %10 ]
  %18 = icmp ult i32 %2, 65
  %19 = add i32 %2, -64
  %20 = select i1 %18, i32 %2, i32 %19
  %21 = select i1 %18, i64 %0, i64 %1
  %22 = add i32 %20, -1
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %15
  %28 = xor i64 %16, -1
  %29 = or i64 %28, %0
  %30 = xor i64 %17, -1
  %31 = or i64 %30, %1
  br label %35

32:                                               ; preds = %15
  %33 = and i64 %16, %0
  %34 = and i64 %17, %1
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i64 [ %29, %27 ], [ %33, %32 ]
  %37 = phi i64 [ %31, %27 ], [ %34, %32 ]
  %38 = insertvalue { i64, i64 } poison, i64 %36, 0
  %39 = insertvalue { i64, i64 } %38, i64 %37, 1
  ret { i64, i64 } %39
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @tree_to_double_int(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !59 {
  %2 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa.struct !60
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !62
  %6 = insertvalue { i64, i64 } poison, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_fits_in_uhwi_p(i64 %0, i64 %1) local_unnamed_addr #9 !prof !39 {
  %3 = icmp eq i64 %1, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_fits_in_shwi_p(i64 %0, i64 %1) local_unnamed_addr #11 !prof !63 {
  switch i64 %1, label %9 [
    i64 0, label %3
    i64 -1, label %6
  ], !prof !64

3:                                                ; preds = %2
  %4 = icmp sgt i64 %0, -1
  %5 = zext i1 %4 to i8
  br label %9

6:                                                ; preds = %2
  %7 = lshr i64 %0, 63
  %8 = trunc i64 %7 to i8
  br label %9

9:                                                ; preds = %2, %6, %3
  %10 = phi i8 [ %5, %3 ], [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_fits_in_hwi_p(i64 %0, i64 %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !39 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = icmp eq i64 %1, 0
  %7 = zext i1 %6 to i8
  br label %15

8:                                                ; preds = %3
  switch i64 %1, label %15 [
    i64 0, label %9
    i64 -1, label %12
  ]

9:                                                ; preds = %8
  %10 = icmp sgt i64 %0, -1
  %11 = zext i1 %10 to i8
  br label %15

12:                                               ; preds = %8
  %13 = lshr i64 %0, 63
  %14 = trunc i64 %13 to i8
  br label %15

15:                                               ; preds = %12, %9, %8, %5
  %16 = phi i8 [ %7, %5 ], [ %11, %9 ], [ %14, %12 ], [ 0, %8 ]
  ret i8 %16
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @double_int_to_shwi(i64 returned %0, i64 %1) local_unnamed_addr #11 !prof !63 {
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @double_int_to_uhwi(i64 returned %0, i64 %1) local_unnamed_addr #9 !prof !39 {
  ret i64 %0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local { i64, i64 } @double_int_mul(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #12 !prof !63 {
  %5 = alloca %struct.double_int, align 8
  %6 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  %7 = call i32 @mul_double_with_sign(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0) #20
  %8 = load i64, ptr %5, align 8
  %9 = insertvalue { i64, i64 } poison, i64 %8, 0
  %10 = load i64, ptr %6, align 8
  %11 = insertvalue { i64, i64 } %9, i64 %10, 1
  ret { i64, i64 } %11
}

declare i32 @mul_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local { i64, i64 } @double_int_add(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #12 !prof !63 {
  %5 = alloca %struct.double_int, align 8
  %6 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  %7 = call i32 @add_double_with_sign(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0) #20
  %8 = load i64, ptr %5, align 8
  %9 = insertvalue { i64, i64 } poison, i64 %8, 0
  %10 = load i64, ptr %6, align 8
  %11 = insertvalue { i64, i64 } %9, i64 %10, 1
  ret { i64, i64 } %11
}

declare i32 @add_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_neg(i64 %0, i64 %1) local_unnamed_addr #13 !prof !39 {
  %3 = alloca %struct.double_int, align 8
  %4 = getelementptr inbounds %struct.double_int, ptr %3, i64 0, i32 1
  %5 = call i32 @neg_double(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %6 = load i64, ptr %3, align 8
  %7 = insertvalue { i64, i64 } poison, i64 %6, 0
  %8 = load i64, ptr %4, align 8
  %9 = insertvalue { i64, i64 } %7, i64 %8, 1
  ret { i64, i64 } %9
}

declare i32 @neg_double(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_divmod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #13 !prof !39 {
  %8 = alloca %struct.double_int, align 8
  %9 = zext i8 %4 to i32
  %10 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  %11 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %12 = call i32 @div_and_round_double(i32 noundef %5, i32 noundef %9, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %6, ptr noundef nonnull %11) #20
  %13 = load i64, ptr %8, align 8
  %14 = insertvalue { i64, i64 } poison, i64 %13, 0
  %15 = load i64, ptr %10, align 8
  %16 = insertvalue { i64, i64 } %14, i64 %15, 1
  ret { i64, i64 } %16
}

declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_sdivmod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #13 !prof !39 {
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %8 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  %10 = call i32 @div_and_round_double(i32 noundef %4, i32 noundef 0, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %5, ptr noundef nonnull %9) #20
  %11 = load i64, ptr %7, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %11, 0
  %13 = load i64, ptr %8, align 8
  %14 = insertvalue { i64, i64 } %12, i64 %13, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  ret { i64, i64 } %14
}

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_udivmod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #13 !prof !39 {
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %8 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  %10 = call i32 @div_and_round_double(i32 noundef %4, i32 noundef 1, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %5, ptr noundef nonnull %9) #20
  %11 = load i64, ptr %7, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %11, 0
  %13 = load i64, ptr %8, align 8
  %14 = insertvalue { i64, i64 } %12, i64 %13, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  ret { i64, i64 } %14
}

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_div(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #13 !prof !39 {
  %7 = alloca %struct.double_int, align 8
  %8 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %9 = zext i8 %4 to i32
  %10 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %11 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  %12 = call i32 @div_and_round_double(i32 noundef %5, i32 noundef %9, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11) #20
  %13 = load i64, ptr %7, align 8
  %14 = insertvalue { i64, i64 } poison, i64 %13, 0
  %15 = load i64, ptr %10, align 8
  %16 = insertvalue { i64, i64 } %14, i64 %15, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  ret { i64, i64 } %16
}

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_sdiv(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #13 !prof !39 {
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %8 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %9 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %10 = call i32 @div_and_round_double(i32 noundef %4, i32 noundef 0, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  %11 = load i64, ptr %6, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %11, 0
  %13 = load i64, ptr %8, align 8
  %14 = insertvalue { i64, i64 } %12, i64 %13, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  ret { i64, i64 } %14
}

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_udiv(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #13 !prof !39 {
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %8 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %9 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %10 = call i32 @div_and_round_double(i32 noundef %4, i32 noundef 1, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  %11 = load i64, ptr %6, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %11, 0
  %13 = load i64, ptr %8, align 8
  %14 = insertvalue { i64, i64 } %12, i64 %13, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  ret { i64, i64 } %14
}

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_mod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #13 !prof !39 {
  %7 = alloca %struct.double_int, align 8
  %8 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %9 = zext i8 %4 to i32
  %10 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %11 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  %12 = call i32 @div_and_round_double(i32 noundef %5, i32 noundef %9, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  %13 = load i64, ptr %8, align 8
  %14 = insertvalue { i64, i64 } poison, i64 %13, 0
  %15 = load i64, ptr %11, align 8
  %16 = insertvalue { i64, i64 } %14, i64 %15, 1
  ret { i64, i64 } %16
}

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_smod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #13 !prof !39 {
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %8 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %9 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %10 = call i32 @div_and_round_double(i32 noundef %4, i32 noundef 0, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %11 = load i64, ptr %7, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %11, 0
  %13 = load i64, ptr %9, align 8
  %14 = insertvalue { i64, i64 } %12, i64 %13, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  ret { i64, i64 } %14
}

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @double_int_umod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #13 !prof !39 {
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %8 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %9 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %10 = call i32 @div_and_round_double(i32 noundef %4, i32 noundef 1, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %11 = load i64, ptr %7, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %11, 0
  %13 = load i64, ptr %9, align 8
  %14 = insertvalue { i64, i64 } %12, i64 %13, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  ret { i64, i64 } %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @double_int_to_tree(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #14 !prof !65 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %29, label %10, !prof !66

10:                                               ; preds = %3
  %11 = icmp ugt i32 %6, 64
  br i1 %11, label %12, label %17, !prof !66

12:                                               ; preds = %10
  %13 = add nsw i32 %6, -65
  %14 = zext nneg i32 %13 to i64
  %15 = shl i64 2, %14
  %16 = add i64 %15, -1
  br label %22

17:                                               ; preds = %10
  %18 = add nsw i32 %6, -1
  %19 = zext nneg i32 %18 to i64
  %20 = shl i64 2, %19
  %21 = add i64 %20, -1
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i64 [ -1, %12 ], [ %21, %17 ]
  %24 = phi i64 [ %16, %12 ], [ 0, %17 ]
  %25 = and i64 %23, %1
  %26 = and i64 %24, %2
  %27 = insertvalue { i64, i64 } poison, i64 %25, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  br label %31

29:                                               ; preds = %3
  %30 = tail call { i64, i64 } @double_int_sext(i64 %1, i64 %2, i32 noundef %6)
  br label %31

31:                                               ; preds = %22, %29
  %32 = phi { i64, i64 } [ %28, %22 ], [ %30, %29 ]
  %33 = extractvalue { i64, i64 } %32, 0
  %34 = extractvalue { i64, i64 } %32, 1
  %35 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %0, i64 noundef %33, i64 noundef %34) #20
  ret ptr %35
}

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @double_int_fits_to_tree_p(ptr nocapture noundef readonly %0, i64 %1, i64 %2) local_unnamed_addr #15 !prof !39 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = icmp ugt i32 %6, 64
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = add nsw i32 %6, -65
  %14 = zext nneg i32 %13 to i64
  %15 = shl i64 2, %14
  %16 = add i64 %15, -1
  br label %22

17:                                               ; preds = %10
  %18 = add nsw i32 %6, -1
  %19 = zext nneg i32 %18 to i64
  %20 = shl i64 2, %19
  %21 = add i64 %20, -1
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i64 [ -1, %12 ], [ %21, %17 ]
  %24 = phi i64 [ %16, %12 ], [ 0, %17 ]
  %25 = and i64 %23, %1
  %26 = and i64 %24, %2
  %27 = insertvalue { i64, i64 } poison, i64 %25, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  br label %31

29:                                               ; preds = %3
  %30 = tail call { i64, i64 } @double_int_sext(i64 %1, i64 %2, i32 noundef %6)
  br label %31

31:                                               ; preds = %22, %29
  %32 = phi { i64, i64 } [ %28, %22 ], [ %30, %29 ]
  %33 = extractvalue { i64, i64 } %32, 0
  %34 = extractvalue { i64, i64 } %32, 1
  %35 = icmp eq i64 %33, %1
  %36 = icmp eq i64 %34, %2
  %37 = select i1 %35, i1 %36, i1 false
  %38 = zext i1 %37 to i8
  ret i8 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_negative_p(i64 %0, i64 %1) local_unnamed_addr #16 !prof !67 {
  %3 = lshr i64 %1, 63
  %4 = trunc i64 %3 to i8
  ret i8 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @double_int_cmp(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4) local_unnamed_addr #11 !prof !68 {
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %16, label %7, !prof !69

7:                                                ; preds = %5
  %8 = icmp ult i64 %1, %3
  br i1 %8, label %25, label %9, !prof !70

9:                                                ; preds = %7
  %10 = icmp ugt i64 %1, %3
  br i1 %10, label %25, label %11, !prof !70

11:                                               ; preds = %9
  %12 = icmp ult i64 %0, %2
  br i1 %12, label %25, label %13, !prof !71

13:                                               ; preds = %11
  %14 = icmp ugt i64 %0, %2
  %15 = zext i1 %14 to i32
  br label %25

16:                                               ; preds = %5
  %17 = icmp slt i64 %1, %3
  br i1 %17, label %25, label %18, !prof !72

18:                                               ; preds = %16
  %19 = icmp sgt i64 %1, %3
  br i1 %19, label %25, label %20, !prof !73

20:                                               ; preds = %18
  %21 = icmp ult i64 %0, %2
  br i1 %21, label %25, label %22, !prof !74

22:                                               ; preds = %20
  %23 = icmp ugt i64 %0, %2
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %22, %20, %18, %16, %13, %11, %9, %7
  %26 = phi i32 [ -1, %7 ], [ 1, %9 ], [ -1, %11 ], [ %15, %13 ], [ -1, %16 ], [ 1, %18 ], [ -1, %20 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @double_int_ucmp(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #16 !prof !75 {
  %5 = icmp ult i64 %1, %3
  br i1 %5, label %13, label %6, !prof !76

6:                                                ; preds = %4
  %7 = icmp ugt i64 %1, %3
  br i1 %7, label %13, label %8, !prof !76

8:                                                ; preds = %6
  %9 = icmp ult i64 %0, %2
  br i1 %9, label %13, label %10, !prof !77

10:                                               ; preds = %8
  %11 = icmp ugt i64 %0, %2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %10, %8, %6, %4
  %14 = phi i32 [ -1, %4 ], [ 1, %6 ], [ -1, %8 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @double_int_scmp(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #9 !prof !39 {
  %5 = icmp slt i64 %1, %3
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i64 %1, %3
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = icmp ult i64 %0, %2
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i64 %0, %2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %10, %8, %6, %4
  %14 = phi i32 [ -1, %4 ], [ 1, %6 ], [ -1, %8 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_double_int(ptr nocapture noundef %0, i64 %1, i64 %2, i8 noundef zeroext %3) local_unnamed_addr #13 !prof !39 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.double_int, align 8
  %10 = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %10) #20
  %11 = icmp ne i64 %1, 0
  %12 = icmp ne i64 %2, 0
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call i32 @fputc(i32 48, ptr %0)
  br label %59

16:                                               ; preds = %4
  %17 = icmp ne i8 %3, 0
  %18 = icmp sgt i64 %2, -1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @fputc(i32 45, ptr %0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9)
  %22 = getelementptr inbounds %struct.double_int, ptr %9, i64 0, i32 1
  %23 = call i32 @neg_double(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %22) #20
  %24 = load i64, ptr %9, align 8
  %25 = load i64, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9)
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i64 [ %25, %20 ], [ %2, %16 ]
  %28 = phi i64 [ %24, %20 ], [ %1, %16 ]
  %29 = icmp ne i64 %28, 0
  %30 = icmp ne i64 %27, 0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %37, %26
  %33 = phi i32 [ -1, %26 ], [ %38, %37 ]
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = zext nneg i32 %33 to i64
  br label %52

37:                                               ; preds = %26, %37
  %38 = phi i32 [ %48, %37 ], [ 0, %26 ]
  %39 = phi i64 [ %43, %37 ], [ %28, %26 ]
  %40 = phi i64 [ %42, %37 ], [ %27, %26 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  %41 = call i32 @div_and_round_double(i32 noundef 69, i32 noundef 1, i64 noundef %39, i64 noundef %40, i64 noundef 10, i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #20
  %42 = load i64, ptr %7, align 8, !tbaa !61
  %43 = load i64, ptr %5, align 8, !tbaa !61
  %44 = load i64, ptr %6, align 8, !tbaa !61
  %45 = trunc i64 %44 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %46 = zext i32 %38 to i64
  %47 = getelementptr inbounds [100 x i32], ptr %10, i64 0, i64 %46
  store i32 %45, ptr %47, align 4, !tbaa !55
  %48 = add i32 %38, 1
  %49 = icmp ne i64 %43, 0
  %50 = icmp ne i64 %42, 0
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %37, label %32, !llvm.loop !78

52:                                               ; preds = %35, %52
  %53 = phi i64 [ %36, %35 ], [ %57, %52 ]
  %54 = getelementptr inbounds [100 x i32], ptr %10, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !55
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %55)
  %57 = add nsw i64 %53, -1
  %58 = icmp sgt i64 %53, 0
  br i1 %58, label %52, label %59, !llvm.loop !79

59:                                               ; preds = %52, %32, %14
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %10) #20
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_set_double_int(ptr noundef %0, i64 %1, i64 %2, i8 noundef zeroext %3) local_unnamed_addr #13 !prof !39 {
  %5 = alloca %struct.double_int, align 8
  %6 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %7 = icmp ne i8 %3, 0
  %8 = icmp sgt i64 %2, -1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %11 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  %12 = call i32 @neg_double(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %11) #20
  %13 = load i64, ptr %5, align 8
  %14 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  store i64 %13, ptr %6, align 16, !tbaa !61
  %15 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 1
  store i64 %14, ptr %15, align 8, !tbaa !61
  call void @mpz_import(ptr noundef %0, i64 noundef 2, i32 noundef -1, i64 noundef 8, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %6) #20
  call void @mpz_neg(ptr noundef %0, ptr noundef %0) #20
  br label %18

16:                                               ; preds = %4
  store i64 %1, ptr %6, align 16, !tbaa !61
  %17 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 1
  store i64 %2, ptr %17, align 8, !tbaa !61
  call void @mpz_import(ptr noundef %0, i64 noundef 2, i32 noundef -1, i64 noundef 8, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %6) #20
  br label %18

18:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret void
}

declare void @mpz_import(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_neg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local { i64, i64 } @mpz_get_double_int(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #13 !prof !39 {
  %4 = alloca %struct.double_int, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @mpz_init(ptr noundef nonnull %6) #20
  call void @mpz_init(ptr noundef nonnull %7) #20
  call void @get_type_static_bounds(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %10 = call i32 @mpz_cmp(ptr noundef %1, ptr noundef nonnull %6) #20
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i32 @mpz_cmp(ptr noundef %1, ptr noundef nonnull %7) #20
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %6, %9 ], [ %7, %12 ]
  call void @mpz_set(ptr noundef %1, ptr noundef nonnull %16) #20
  br label %17

17:                                               ; preds = %15, %12
  call void @mpz_clear(ptr noundef nonnull %6) #20
  call void @mpz_clear(ptr noundef nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %18

18:                                               ; preds = %17, %3
  %19 = call i64 @mpz_sizeinbase(ptr noundef %1, i32 noundef 2) #20
  %20 = add i64 %19, 63
  %21 = lshr i64 %20, 6
  %22 = call i64 @llvm.umax.i64(i64 %21, i64 2)
  store i64 %22, ptr %5, align 8
  %23 = shl nuw nsw i64 %22, 3
  %24 = alloca i8, i64 %23, align 16
  %25 = getelementptr inbounds i64, ptr %24, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %26 = call ptr @mpz_export(ptr noundef nonnull %24, ptr noundef nonnull %5, i32 noundef -1, i64 noundef 8, i32 noundef 0, i64 noundef 0, ptr noundef %1) #20
  %27 = icmp ne i8 %2, 0
  %28 = load i64, ptr %5, align 8
  %29 = icmp ult i64 %28, 3
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 483, ptr noundef nonnull @.str.4) #20
  br label %32

32:                                               ; preds = %18, %31
  %33 = load i64, ptr %24, align 16, !tbaa !61
  %34 = load i64, ptr %25, align 8, !tbaa !61
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 2097152
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %32
  %42 = icmp ugt i32 %37, 64
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = add nsw i32 %37, -65
  %45 = zext nneg i32 %44 to i64
  %46 = shl i64 2, %45
  %47 = add i64 %46, -1
  br label %53

48:                                               ; preds = %41
  %49 = add nsw i32 %37, -1
  %50 = zext nneg i32 %49 to i64
  %51 = shl i64 2, %50
  %52 = add i64 %51, -1
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i64 [ -1, %43 ], [ %52, %48 ]
  %55 = phi i64 [ %47, %43 ], [ 0, %48 ]
  %56 = and i64 %54, %33
  %57 = and i64 %55, %34
  %58 = insertvalue { i64, i64 } poison, i64 %56, 0
  %59 = insertvalue { i64, i64 } %58, i64 %57, 1
  br label %62

60:                                               ; preds = %32
  %61 = call { i64, i64 } @double_int_sext(i64 %33, i64 %34, i32 noundef %37)
  br label %62

62:                                               ; preds = %53, %60
  %63 = phi { i64, i64 } [ %59, %53 ], [ %61, %60 ]
  %64 = call i32 @mpz_sgn(ptr noundef %1) #20
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = extractvalue { i64, i64 } %63, 1
  %68 = extractvalue { i64, i64 } %63, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %69 = getelementptr inbounds %struct.double_int, ptr %4, i64 0, i32 1
  %70 = call i32 @neg_double(i64 noundef %68, i64 noundef %67, ptr noundef nonnull %4, ptr noundef nonnull %69) #20
  %71 = load i64, ptr %4, align 8
  %72 = insertvalue { i64, i64 } poison, i64 %71, 0
  %73 = load i64, ptr %69, align 8
  %74 = insertvalue { i64, i64 } %72, i64 %73, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %75

75:                                               ; preds = %66, %62
  %76 = phi { i64, i64 } [ %74, %66 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret { i64, i64 } %76
}

declare void @mpz_init(ptr noundef) local_unnamed_addr #3

declare void @get_type_static_bounds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mpz_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_clear(ptr noundef) local_unnamed_addr #3

declare i64 @mpz_sizeinbase(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @mpz_export(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mpz_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @double_int_mul, ptr @mul_double_with_sign, i64 224151}
!36 = !{ptr @double_int_add, ptr @add_double_with_sign, i64 224151}
!37 = !{ptr @double_int_to_tree, ptr @build_int_cst_wide, i64 11331}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !41, i64 8}
!45 = !{!"_IO_FILE", !46, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !46, i64 112, !46, i64 116, !47, i64 120, !48, i64 128, !42, i64 130, !42, i64 131, !41, i64 136, !47, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !47, i64 184, !46, i64 192, !42, i64 196}
!46 = !{!"int", !42, i64 0}
!47 = !{!"long", !42, i64 0}
!48 = !{!"short", !42, i64 0}
!49 = !{!45, !41, i64 16}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!42, !42, i64 0}
!52 = !{!45, !41, i64 40}
!53 = !{!45, !41, i64 48}
!54 = !{!45, !46, i64 0}
!55 = !{!46, !46, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"function_entry_count", i64 1256744}
!60 = !{i64 0, i64 8, !61, i64 8, i64 8, !61}
!61 = !{!47, !47, i64 0}
!62 = !{i64 0, i64 8, !61}
!63 = !{!"function_entry_count", i64 224151}
!64 = !{!"branch_weights", i32 0, i32 224151, i32 0}
!65 = !{!"function_entry_count", i64 11331}
!66 = !{!"branch_weights", i32 0, i32 11331}
!67 = !{!"function_entry_count", i64 57848}
!68 = !{!"function_entry_count", i64 466004}
!69 = !{!"branch_weights", i32 7160, i32 458844}
!70 = !{!"branch_weights", i32 0, i32 458844}
!71 = !{!"branch_weights", i32 229422, i32 229422}
!72 = !{!"branch_weights", i32 15, i32 7145}
!73 = !{!"branch_weights", i32 3565, i32 3580}
!74 = !{!"branch_weights", i32 3565, i32 15}
!75 = !{!"function_entry_count", i64 57844}
!76 = !{!"branch_weights", i32 0, i32 57844}
!77 = !{!"branch_weights", i32 28434, i32 29410}
!78 = distinct !{!78, !57, !58}
!79 = distinct !{!79, !57, !58}
