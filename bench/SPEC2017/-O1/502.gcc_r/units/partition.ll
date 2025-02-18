; ModuleID = 'partition.c'
source_filename = "partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
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
  br i1 %23, label %7, label %24, !llvm.loop !39

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !42
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #3 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #3 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @partition_new(i32 noundef %0) local_unnamed_addr #7 !prof !57 {
  %2 = add nsw i32 %0, -1
  %3 = sext i32 %2 to i64
  %4 = mul nsw i64 %3, 24
  %5 = add nsw i64 %4, 32
  %6 = tail call ptr @xmalloc(i64 noundef %5) #14
  store i32 %0, ptr %6, align 8, !tbaa !58
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %18, !prof !60

8:                                                ; preds = %1
  %9 = zext nneg i32 %0 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %16, %10 ]
  %12 = getelementptr inbounds %struct.partition_def, ptr %6, i64 0, i32 1, i64 %11
  %13 = trunc i64 %11 to i32
  store i32 %13, ptr %12, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.partition_def, ptr %6, i64 0, i32 1, i64 %11, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.partition_def, ptr %6, i64 0, i32 1, i64 %11, i32 2
  store i32 1, ptr %15, align 8, !tbaa !64
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !prof !65, !llvm.loop !66

18:                                               ; preds = %10, %1
  ret ptr %6
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @partition_delete(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !57 {
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @partition_union(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !67 {
  %4 = getelementptr inbounds %struct.partition_def, ptr %0, i64 0, i32 1
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %44, label %12, !prof !68

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %5, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %8, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !64
  %17 = icmp ult i32 %14, %16
  %18 = select i1 %17, i32 %1, i32 %2, !prof !69
  %19 = select i1 %17, i32 %2, i32 %1, !prof !69
  %20 = select i1 %17, i32 %10, i32 %7, !prof !69
  %21 = sext i32 %19 to i64
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %25, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !64
  %28 = sext i32 %20 to i64
  %29 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %28, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !64
  %31 = add i32 %30, %27
  store i32 %31, ptr %29, align 8, !tbaa !64
  store i32 %20, ptr %23, align 8, !tbaa !61
  %32 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %22, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  %34 = icmp eq ptr %33, %23
  br i1 %34, label %40, label %35, !prof !70

35:                                               ; preds = %12, %35
  %36 = phi ptr [ %38, %35 ], [ %33, %12 ]
  store i32 %20, ptr %36, align 8, !tbaa !61
  %37 = getelementptr inbounds %struct.partition_elem, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !63
  %39 = icmp eq ptr %38, %23
  br i1 %39, label %40, label %35, !prof !71, !llvm.loop !72

40:                                               ; preds = %35, %12
  %41 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %21, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = load ptr, ptr %32, align 8, !tbaa !63
  store ptr %43, ptr %41, align 8, !tbaa !63
  store ptr %42, ptr %32, align 8, !tbaa !63
  br label %44

44:                                               ; preds = %3, %40
  %45 = phi i32 [ %20, %40 ], [ %7, %3 ]
  ret i32 %45
}

; Function Attrs: cold nounwind uwtable
define dso_local void @partition_print(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !prof !38 {
  %3 = load i32, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.partition_def, ptr %0, i64 0, i32 1
  %5 = sext i32 %3 to i64
  %6 = tail call ptr @xmalloc(i64 noundef %5) #14
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %5, i1 false)
  %7 = shl nsw i64 %5, 2
  %8 = tail call ptr @xmalloc(i64 noundef %7) #14
  %9 = tail call i32 @fputc(i32 noundef 91, ptr noundef %1)
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %2
  %12 = ptrtoint ptr %4 to i64
  %13 = zext nneg i32 %3 to i64
  br label %14

14:                                               ; preds = %11, %60
  %15 = phi i64 [ 0, %11 ], [ %61, %60 ]
  %16 = getelementptr inbounds i8, ptr %6, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !53
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %15
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %22, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !64
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = zext nneg i32 %24 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %41, %28 ]
  %30 = phi i64 [ %15, %26 ], [ %40, %28 ]
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds i32, ptr %8, i64 %29
  store i32 %31, ptr %32, align 4, !tbaa !73
  %33 = shl i64 %30, 32
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds i8, ptr %6, i64 %34
  store i8 1, ptr %35, align 1, !tbaa !53
  %36 = getelementptr inbounds %struct.partition_elem, ptr %4, i64 %34, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !63
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %12
  %40 = sdiv exact i64 %39, 24
  %41 = add nuw nsw i64 %29, 1
  %42 = icmp eq i64 %41, %27
  br i1 %42, label %43, label %28, !llvm.loop !74

43:                                               ; preds = %28, %19
  %44 = sext i32 %24 to i64
  tail call void @spec_qsort(ptr noundef %8, i64 noundef %44, i64 noundef 4, ptr noundef nonnull @elem_compare) #14
  %45 = tail call i32 @fputc(i32 noundef 40, ptr noundef %1)
  %46 = icmp sgt i32 %24, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = zext nneg i32 %24 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ 0, %47 ], [ %56, %49 ]
  %51 = icmp eq i64 %50, 0
  %52 = select i1 %51, ptr @.str, ptr @.str.1
  %53 = getelementptr inbounds i32, ptr %8, i64 %50
  %54 = load i32, ptr %53, align 4, !tbaa !73
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull %52, i32 noundef %54)
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, %48
  br i1 %57, label %58, label %49, !llvm.loop !75

58:                                               ; preds = %49, %43
  %59 = tail call i32 @fputc(i32 noundef 41, ptr noundef %1)
  br label %60

60:                                               ; preds = %14, %58
  %61 = add nuw nsw i64 %15, 1
  %62 = icmp eq i64 %61, %13
  br i1 %62, label %63, label %14, !llvm.loop !76

63:                                               ; preds = %60, %2
  %64 = tail call i32 @fputc(i32 noundef 93, ptr noundef %1)
  tail call void @free(ptr noundef %8)
  tail call void @free(ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @elem_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !38 {
  %3 = load i32, ptr %0, align 4, !tbaa !73
  %4 = load i32, ptr %1, align 4, !tbaa !73
  %5 = icmp slt i32 %3, %4
  %6 = icmp sgt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @partition_new, ptr @xmalloc, i64 192}
!36 = !{ptr @partition_delete, ptr @free, i64 192}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !43, i64 8}
!47 = !{!"_IO_FILE", !48, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !48, i64 112, !48, i64 116, !49, i64 120, !50, i64 128, !44, i64 130, !44, i64 131, !43, i64 136, !49, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !49, i64 184, !48, i64 192, !44, i64 196}
!48 = !{!"int", !44, i64 0}
!49 = !{!"long", !44, i64 0}
!50 = !{!"short", !44, i64 0}
!51 = !{!47, !43, i64 16}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!44, !44, i64 0}
!54 = !{!47, !43, i64 40}
!55 = !{!47, !43, i64 48}
!56 = !{!47, !48, i64 0}
!57 = !{!"function_entry_count", i64 192}
!58 = !{!59, !48, i64 0}
!59 = !{!"partition_def", !48, i64 0, !44, i64 8}
!60 = !{!"branch_weights", i32 191, i32 1}
!61 = !{!62, !48, i64 0}
!62 = !{!"partition_elem", !48, i64 0, !43, i64 8, !48, i64 16}
!63 = !{!62, !43, i64 8}
!64 = !{!62, !48, i64 16}
!65 = !{!"branch_weights", i32 191, i32 1953982}
!66 = distinct !{!66, !40, !41}
!67 = !{!"function_entry_count", i64 54376}
!68 = !{!"branch_weights", i32 0, i32 54376}
!69 = !{!"branch_weights", i32 1123, i32 53253}
!70 = !{!"branch_weights", i32 54339, i32 37}
!71 = !{!"branch_weights", i32 37, i32 0}
!72 = distinct !{!72, !40, !41}
!73 = !{!48, !48, i64 0}
!74 = distinct !{!74, !40, !41}
!75 = distinct !{!75, !40, !41}
!76 = distinct !{!76, !40, !41}
