; ModuleID = 'fibheap.c'
source_filename = "fibheap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.fibnode = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.fibheap = type { i64, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"Can't force minimum on fibheap.\0A\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !45 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !46

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !45 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !45 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !49
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #4 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !49
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !59

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = load i8, ptr %3, align 1, !tbaa !60
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !59

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = load i8, ptr %3, align 1, !tbaa !60
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !59

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = load i8, ptr %3, align 1, !tbaa !60
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #4 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !49
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !59

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !61
  store i8 %12, ptr %4, align 1, !tbaa !60
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !59

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !61
  store i8 %12, ptr %4, align 1, !tbaa !60
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !59

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !61
  store i8 %12, ptr %4, align 1, !tbaa !60
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !45 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !63
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !63
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fibheap_new() local_unnamed_addr #8 !prof !64 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #18
  ret ptr %1
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @fibheap_insert(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !65 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #18
  %5 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 3
  store ptr %4, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 5
  store ptr %2, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 4
  store i64 %1, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !73

12:                                               ; preds = %3
  store ptr %4, ptr %9, align 8, !tbaa !71
  store ptr %4, ptr %5, align 8, !tbaa !66
  store ptr %4, ptr %6, align 8, !tbaa !68
  br label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.fibnode, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %17, label %19, !prof !74

17:                                               ; preds = %13
  store ptr %4, ptr %14, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.fibnode, ptr %10, i64 0, i32 2
  store ptr %4, ptr %18, align 8, !tbaa !66
  store ptr %10, ptr %6, align 8, !tbaa !68
  store ptr %10, ptr %5, align 8, !tbaa !66
  br label %22

19:                                               ; preds = %13
  store ptr %15, ptr %6, align 8, !tbaa !68
  %20 = load ptr, ptr %14, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.fibnode, ptr %20, i64 0, i32 2
  store ptr %4, ptr %21, align 8, !tbaa !66
  store ptr %4, ptr %14, align 8, !tbaa !68
  store ptr %10, ptr %5, align 8, !tbaa !66
  br label %22

22:                                               ; preds = %12, %17, %19
  %23 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !73

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.fibnode, ptr %24, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !70
  %29 = icmp sgt i64 %28, %1
  br i1 %29, label %30, label %31, !prof !76

30:                                               ; preds = %26, %22
  store ptr %4, ptr %23, align 8, !tbaa !75
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i64, ptr %0, align 8, !tbaa !77
  %33 = add i64 %32, 1
  store i64 %33, ptr %0, align 8, !tbaa !77
  ret ptr %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @fibheap_min(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !45 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fibnode, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @fibheap_min_key(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !45 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fibnode, ptr %3, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !70
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i64 [ %7, %5 ], [ 0, %1 ]
  ret i64 %9
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local noundef ptr @fibheap_union(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !45 {
  %3 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fibheap, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.fibnode, ptr %12, i64 0, i32 3
  store ptr %8, ptr %13, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.fibnode, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.fibnode, ptr %15, i64 0, i32 3
  store ptr %4, ptr %16, align 8, !tbaa !68
  store ptr %15, ptr %11, align 8, !tbaa !66
  store ptr %12, ptr %14, align 8, !tbaa !66
  %17 = load i64, ptr %1, align 8, !tbaa !77
  %18 = load i64, ptr %0, align 8, !tbaa !77
  %19 = add i64 %18, %17
  store i64 %19, ptr %0, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.fibheap, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.fibnode, ptr %21, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.fibnode, ptr %23, i64 0, i32 4
  %27 = load i64, ptr %26, align 8, !tbaa !70
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %10
  store ptr %21, ptr %22, align 8, !tbaa !75
  br label %30

30:                                               ; preds = %10, %29, %6, %2
  %31 = phi ptr [ %0, %2 ], [ %1, %6 ], [ %1, %29 ], [ %1, %10 ]
  %32 = phi ptr [ %1, %2 ], [ %0, %6 ], [ %0, %29 ], [ %0, %10 ]
  tail call void @free(ptr noundef %31)
  ret ptr %32
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local ptr @fibheap_extract_min(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !78 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !79

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @fibheap_extr_min_node(ptr noundef %0)
  %7 = getelementptr inbounds %struct.fibnode, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @free(ptr noundef %6)
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @fibheap_extr_min_node(ptr nocapture noundef %0) unnamed_addr #12 !prof !65 !PGOFuncName !80 {
  %2 = alloca [65 x ptr], align 16
  %3 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8, !prof !82

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  br label %11

11:                                               ; preds = %8, %33
  %12 = phi ptr [ %10, %8 ], [ %34, %33 ]
  %13 = phi ptr [ null, %8 ], [ %16, %33 ]
  %14 = phi ptr [ %6, %8 ], [ %18, %33 ]
  %15 = icmp eq ptr %13, null
  %16 = select i1 %15, ptr %14, ptr %13, !prof !83
  %17 = getelementptr inbounds %struct.fibnode, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  store ptr null, ptr %14, align 8, !tbaa !84
  %19 = icmp eq ptr %12, null
  br i1 %19, label %20, label %22, !prof !85

20:                                               ; preds = %11
  store ptr %14, ptr %9, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.fibnode, ptr %14, i64 0, i32 2
  store ptr %14, ptr %21, align 8, !tbaa !66
  store ptr %14, ptr %17, align 8, !tbaa !68
  br label %33

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.fibnode, ptr %12, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = icmp eq ptr %24, %12
  br i1 %25, label %26, label %29, !prof !86

26:                                               ; preds = %22
  store ptr %14, ptr %23, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.fibnode, ptr %12, i64 0, i32 2
  store ptr %14, ptr %27, align 8, !tbaa !66
  store ptr %12, ptr %17, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.fibnode, ptr %14, i64 0, i32 2
  store ptr %12, ptr %28, align 8, !tbaa !66
  br label %33

29:                                               ; preds = %22
  store ptr %24, ptr %17, align 8, !tbaa !68
  %30 = load ptr, ptr %23, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.fibnode, ptr %30, i64 0, i32 2
  store ptr %14, ptr %31, align 8, !tbaa !66
  store ptr %14, ptr %23, align 8, !tbaa !68
  %32 = getelementptr inbounds %struct.fibnode, ptr %14, i64 0, i32 2
  store ptr %12, ptr %32, align 8, !tbaa !66
  br label %33

33:                                               ; preds = %20, %26, %29
  %34 = phi ptr [ %14, %20 ], [ %12, %26 ], [ %12, %29 ]
  %35 = icmp ne ptr %18, %16
  %36 = icmp ne ptr %18, null
  %37 = and i1 %36, %35
  br i1 %37, label %11, label %38, !prof !87, !llvm.loop !88

38:                                               ; preds = %33, %1
  %39 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = icmp eq ptr %40, %4
  br i1 %41, label %56, label %42, !prof !73

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !84
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45, !prof !89

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.fibnode, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = icmp eq ptr %47, %4
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store ptr %40, ptr %46, align 8, !tbaa !81
  br label %50

50:                                               ; preds = %49, %45, %42
  %51 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct.fibnode, ptr %52, i64 0, i32 2
  store ptr %40, ptr %53, align 8, !tbaa !66
  %54 = load ptr, ptr %39, align 8, !tbaa !66
  %55 = getelementptr inbounds %struct.fibnode, ptr %54, i64 0, i32 3
  store ptr %52, ptr %55, align 8, !tbaa !68
  store ptr null, ptr %4, align 8, !tbaa !84
  store ptr %4, ptr %39, align 8, !tbaa !66
  store ptr %4, ptr %51, align 8, !tbaa !68
  br label %56

56:                                               ; preds = %38, %50
  %57 = phi ptr [ %40, %50 ], [ null, %38 ]
  %58 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !71
  %59 = load i64, ptr %0, align 8, !tbaa !77
  %60 = add i64 %59, -1
  store i64 %60, ptr %0, align 8, !tbaa !77
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63, !prof !73

62:                                               ; preds = %56
  store ptr null, ptr %3, align 8, !tbaa !75
  br label %186

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.fibnode, ptr %4, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !68
  store ptr %65, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %2, i8 0, i64 520, i1 false)
  %66 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = icmp eq ptr %67, null
  br i1 %68, label %147, label %69, !prof !90

69:                                               ; preds = %63, %142
  %70 = phi ptr [ %145, %142 ], [ %67, %63 ]
  %71 = getelementptr inbounds %struct.fibnode, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !66
  %73 = icmp eq ptr %72, %70
  br i1 %73, label %88, label %74, !prof !91

74:                                               ; preds = %69
  %75 = load ptr, ptr %70, align 8, !tbaa !84
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77, !prof !92

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.fibnode, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  %80 = icmp eq ptr %79, %70
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store ptr %72, ptr %78, align 8, !tbaa !81
  br label %82

82:                                               ; preds = %81, %77, %74
  %83 = getelementptr inbounds %struct.fibnode, ptr %70, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !68
  %85 = getelementptr inbounds %struct.fibnode, ptr %84, i64 0, i32 2
  store ptr %72, ptr %85, align 8, !tbaa !66
  %86 = load ptr, ptr %71, align 8, !tbaa !66
  %87 = getelementptr inbounds %struct.fibnode, ptr %86, i64 0, i32 3
  store ptr %84, ptr %87, align 8, !tbaa !68
  store ptr null, ptr %70, align 8, !tbaa !84
  store ptr %70, ptr %71, align 8, !tbaa !66
  store ptr %70, ptr %83, align 8, !tbaa !68
  br label %88

88:                                               ; preds = %69, %82
  %89 = phi ptr [ %72, %82 ], [ null, %69 ]
  store ptr %89, ptr %66, align 8, !tbaa !71
  %90 = getelementptr inbounds %struct.fibnode, ptr %70, i64 0, i32 6
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 2147483647
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [65 x ptr], ptr %2, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !49
  %96 = icmp eq ptr %95, null
  br i1 %96, label %142, label %97, !prof !93

97:                                               ; preds = %88, %128
  %98 = phi i64 [ %138, %128 ], [ %93, %88 ]
  %99 = phi ptr [ %140, %128 ], [ %95, %88 ]
  %100 = phi ptr [ %139, %128 ], [ %94, %88 ]
  %101 = phi ptr [ %107, %128 ], [ %70, %88 ]
  %102 = getelementptr inbounds %struct.fibnode, ptr %101, i64 0, i32 4
  %103 = load i64, ptr %102, align 8, !tbaa !70
  %104 = getelementptr inbounds %struct.fibnode, ptr %99, i64 0, i32 4
  %105 = load i64, ptr %104, align 8, !tbaa !70
  %106 = icmp sgt i64 %103, %105
  %107 = select i1 %106, ptr %99, ptr %101, !prof !94
  %108 = select i1 %106, ptr %101, ptr %99, !prof !94
  %109 = getelementptr inbounds %struct.fibnode, ptr %107, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !81
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %113, !prof !95

112:                                              ; preds = %97
  store ptr %108, ptr %109, align 8, !tbaa !81
  br label %128

113:                                              ; preds = %97
  %114 = getelementptr inbounds %struct.fibnode, ptr %110, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !66
  %116 = getelementptr inbounds %struct.fibnode, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !68
  %118 = icmp eq ptr %117, %115
  br i1 %118, label %119, label %123, !prof !96

119:                                              ; preds = %113
  store ptr %108, ptr %116, align 8, !tbaa !68
  %120 = getelementptr inbounds %struct.fibnode, ptr %115, i64 0, i32 2
  store ptr %108, ptr %120, align 8, !tbaa !66
  %121 = getelementptr inbounds %struct.fibnode, ptr %108, i64 0, i32 3
  store ptr %115, ptr %121, align 8, !tbaa !68
  %122 = getelementptr inbounds %struct.fibnode, ptr %108, i64 0, i32 2
  store ptr %115, ptr %122, align 8, !tbaa !66
  br label %128

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.fibnode, ptr %108, i64 0, i32 3
  store ptr %117, ptr %124, align 8, !tbaa !68
  %125 = load ptr, ptr %116, align 8, !tbaa !68
  %126 = getelementptr inbounds %struct.fibnode, ptr %125, i64 0, i32 2
  store ptr %108, ptr %126, align 8, !tbaa !66
  store ptr %108, ptr %116, align 8, !tbaa !68
  %127 = getelementptr inbounds %struct.fibnode, ptr %108, i64 0, i32 2
  store ptr %115, ptr %127, align 8, !tbaa !66
  br label %128

128:                                              ; preds = %123, %119, %112
  store ptr %107, ptr %108, align 8, !tbaa !84
  %129 = getelementptr inbounds %struct.fibnode, ptr %107, i64 0, i32 6
  %130 = load i32, ptr %129, align 8
  %131 = add i32 %130, 1
  %132 = and i32 %131, 2147483647
  %133 = and i32 %130, -2147483648
  %134 = or disjoint i32 %132, %133
  store i32 %134, ptr %129, align 8
  %135 = getelementptr inbounds %struct.fibnode, ptr %108, i64 0, i32 6
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 2147483647
  store i32 %137, ptr %135, align 8
  store ptr null, ptr %100, align 8, !tbaa !49
  %138 = add nuw nsw i64 %98, 1
  %139 = getelementptr inbounds [65 x ptr], ptr %2, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !49
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %97, !prof !97, !llvm.loop !98

142:                                              ; preds = %128, %88
  %143 = phi ptr [ %70, %88 ], [ %107, %128 ]
  %144 = phi ptr [ %94, %88 ], [ %139, %128 ]
  store ptr %143, ptr %144, align 8, !tbaa !49
  %145 = load ptr, ptr %66, align 8, !tbaa !71
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %69, !prof !99, !llvm.loop !100

147:                                              ; preds = %142, %63
  store ptr null, ptr %3, align 8, !tbaa !75
  br label %148

148:                                              ; preds = %147, %182
  %149 = phi i64 [ 0, %147 ], [ %183, %182 ]
  %150 = getelementptr inbounds [65 x ptr], ptr %2, i64 0, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !49
  %152 = icmp eq ptr %151, null
  br i1 %152, label %182, label %153, !prof !101

153:                                              ; preds = %148
  %154 = load ptr, ptr %66, align 8, !tbaa !71
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %159, !prof !102

156:                                              ; preds = %153
  store ptr %151, ptr %66, align 8, !tbaa !71
  %157 = getelementptr inbounds %struct.fibnode, ptr %151, i64 0, i32 2
  store ptr %151, ptr %157, align 8, !tbaa !66
  %158 = getelementptr inbounds %struct.fibnode, ptr %151, i64 0, i32 3
  store ptr %151, ptr %158, align 8, !tbaa !68
  br label %172

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.fibnode, ptr %154, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !68
  %162 = icmp eq ptr %161, %154
  br i1 %162, label %163, label %167, !prof !103

163:                                              ; preds = %159
  store ptr %151, ptr %160, align 8, !tbaa !68
  %164 = getelementptr inbounds %struct.fibnode, ptr %154, i64 0, i32 2
  store ptr %151, ptr %164, align 8, !tbaa !66
  %165 = getelementptr inbounds %struct.fibnode, ptr %151, i64 0, i32 3
  store ptr %154, ptr %165, align 8, !tbaa !68
  %166 = getelementptr inbounds %struct.fibnode, ptr %151, i64 0, i32 2
  store ptr %154, ptr %166, align 8, !tbaa !66
  br label %172

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.fibnode, ptr %151, i64 0, i32 3
  store ptr %161, ptr %168, align 8, !tbaa !68
  %169 = load ptr, ptr %160, align 8, !tbaa !68
  %170 = getelementptr inbounds %struct.fibnode, ptr %169, i64 0, i32 2
  store ptr %151, ptr %170, align 8, !tbaa !66
  store ptr %151, ptr %160, align 8, !tbaa !68
  %171 = getelementptr inbounds %struct.fibnode, ptr %151, i64 0, i32 2
  store ptr %154, ptr %171, align 8, !tbaa !66
  br label %172

172:                                              ; preds = %167, %163, %156
  %173 = load ptr, ptr %3, align 8, !tbaa !75
  %174 = icmp eq ptr %173, null
  br i1 %174, label %181, label %175, !prof !102

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.fibnode, ptr %151, i64 0, i32 4
  %177 = load i64, ptr %176, align 8, !tbaa !70
  %178 = getelementptr inbounds %struct.fibnode, ptr %173, i64 0, i32 4
  %179 = load i64, ptr %178, align 8, !tbaa !70
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %181, label %182, !prof !104

181:                                              ; preds = %175, %172
  store ptr %151, ptr %3, align 8, !tbaa !75
  br label %182

182:                                              ; preds = %181, %175, %148
  %183 = add nuw nsw i64 %149, 1
  %184 = icmp eq i64 %183, 65
  br i1 %184, label %185, label %148, !prof !105, !llvm.loop !106

185:                                              ; preds = %182
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %2) #18
  br label %186

186:                                              ; preds = %185, %62
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @fibheap_replace_key_data(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !107 {
  %5 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = icmp slt i64 %6, %2
  br i1 %7, label %115, label %8, !prof !108

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  store ptr %3, ptr %9, align 8, !tbaa !69
  store i64 %2, ptr %5, align 8, !tbaa !70
  %11 = load ptr, ptr %1, align 8, !tbaa !84
  %12 = icmp eq i64 %6, %2
  %13 = icmp ne i64 %6, -9223372036854775808
  %14 = and i1 %12, %13
  br i1 %14, label %115, label %15, !prof !108

15:                                               ; preds = %8
  %16 = icmp eq ptr %11, null
  br i1 %16, label %107, label %17, !prof !109

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.fibnode, ptr %11, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !70
  %20 = icmp slt i64 %19, %2
  br i1 %20, label %107, label %21, !prof !110

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.fibnode, ptr %11, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !81
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %30, !prof !111

27:                                               ; preds = %21
  %28 = icmp eq ptr %23, %1
  %29 = select i1 %28, ptr null, ptr %23, !prof !112
  store ptr %29, ptr %24, align 8, !tbaa !81
  br label %30

30:                                               ; preds = %27, %21
  %31 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.fibnode, ptr %32, i64 0, i32 2
  store ptr %23, ptr %33, align 8, !tbaa !66
  %34 = load ptr, ptr %22, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.fibnode, ptr %34, i64 0, i32 3
  store ptr %32, ptr %35, align 8, !tbaa !68
  store ptr null, ptr %1, align 8, !tbaa !84
  store ptr %1, ptr %22, align 8, !tbaa !66
  store ptr %1, ptr %31, align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.fibnode, ptr %11, i64 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 2147483647
  %39 = and i32 %38, 2147483647
  %40 = and i32 %37, -2147483648
  %41 = or disjoint i32 %39, %40
  store i32 %41, ptr %36, align 8
  %42 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !113

45:                                               ; preds = %30
  store ptr %1, ptr %42, align 8, !tbaa !71
  store ptr %1, ptr %22, align 8, !tbaa !66
  store ptr %1, ptr %31, align 8, !tbaa !68
  br label %55

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.fibnode, ptr %43, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  %49 = icmp eq ptr %48, %43
  br i1 %49, label %50, label %52, !prof !114

50:                                               ; preds = %46
  store ptr %1, ptr %47, align 8, !tbaa !68
  %51 = getelementptr inbounds %struct.fibnode, ptr %43, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !66
  store ptr %43, ptr %31, align 8, !tbaa !68
  store ptr %43, ptr %22, align 8, !tbaa !66
  br label %55

52:                                               ; preds = %46
  store ptr %48, ptr %31, align 8, !tbaa !68
  %53 = load ptr, ptr %47, align 8, !tbaa !68
  %54 = getelementptr inbounds %struct.fibnode, ptr %53, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !66
  store ptr %1, ptr %47, align 8, !tbaa !68
  store ptr %43, ptr %22, align 8, !tbaa !66
  br label %55

55:                                               ; preds = %45, %50, %52
  store ptr null, ptr %1, align 8, !tbaa !84
  %56 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 2147483647
  store i32 %58, ptr %56, align 8
  %59 = load ptr, ptr %11, align 8, !tbaa !84
  %60 = icmp eq ptr %59, null
  br i1 %60, label %107, label %61, !prof !115

61:                                               ; preds = %55, %102
  %62 = phi ptr [ %105, %102 ], [ %59, %55 ]
  %63 = phi ptr [ %62, %102 ], [ %11, %55 ]
  %64 = getelementptr inbounds %struct.fibnode, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 8
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %69, !prof !116

67:                                               ; preds = %61
  %68 = or disjoint i32 %65, -2147483648
  store i32 %68, ptr %64, align 8
  br label %107

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.fibnode, ptr %63, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.fibnode, ptr %62, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !81
  %74 = icmp eq ptr %73, %63
  br i1 %74, label %75, label %78, !prof !111

75:                                               ; preds = %69
  %76 = icmp eq ptr %71, %63
  %77 = select i1 %76, ptr null, ptr %71, !prof !112
  store ptr %77, ptr %72, align 8, !tbaa !81
  br label %78

78:                                               ; preds = %75, %69
  %79 = getelementptr inbounds %struct.fibnode, ptr %63, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !68
  %81 = getelementptr inbounds %struct.fibnode, ptr %80, i64 0, i32 2
  store ptr %71, ptr %81, align 8, !tbaa !66
  %82 = load ptr, ptr %70, align 8, !tbaa !66
  %83 = getelementptr inbounds %struct.fibnode, ptr %82, i64 0, i32 3
  store ptr %80, ptr %83, align 8, !tbaa !68
  store ptr null, ptr %63, align 8, !tbaa !84
  store ptr %63, ptr %70, align 8, !tbaa !66
  store ptr %63, ptr %79, align 8, !tbaa !68
  %84 = getelementptr inbounds %struct.fibnode, ptr %62, i64 0, i32 6
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, 2147483647
  %87 = and i32 %86, 2147483647
  %88 = and i32 %85, -2147483648
  %89 = or disjoint i32 %87, %88
  store i32 %89, ptr %84, align 8
  %90 = load ptr, ptr %42, align 8, !tbaa !71
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93, !prof !113

92:                                               ; preds = %78
  store ptr %63, ptr %42, align 8, !tbaa !71
  store ptr %63, ptr %70, align 8, !tbaa !66
  store ptr %63, ptr %79, align 8, !tbaa !68
  br label %102

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.fibnode, ptr %90, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !68
  %96 = icmp eq ptr %95, %90
  br i1 %96, label %97, label %99, !prof !114

97:                                               ; preds = %93
  store ptr %63, ptr %94, align 8, !tbaa !68
  %98 = getelementptr inbounds %struct.fibnode, ptr %90, i64 0, i32 2
  store ptr %63, ptr %98, align 8, !tbaa !66
  store ptr %90, ptr %79, align 8, !tbaa !68
  store ptr %90, ptr %70, align 8, !tbaa !66
  br label %102

99:                                               ; preds = %93
  store ptr %95, ptr %79, align 8, !tbaa !68
  %100 = load ptr, ptr %94, align 8, !tbaa !68
  %101 = getelementptr inbounds %struct.fibnode, ptr %100, i64 0, i32 2
  store ptr %63, ptr %101, align 8, !tbaa !66
  store ptr %63, ptr %94, align 8, !tbaa !68
  store ptr %90, ptr %70, align 8, !tbaa !66
  br label %102

102:                                              ; preds = %92, %97, %99
  store ptr null, ptr %63, align 8, !tbaa !84
  %103 = load i32, ptr %64, align 8
  %104 = and i32 %103, 2147483647
  store i32 %104, ptr %64, align 8
  %105 = load ptr, ptr %62, align 8, !tbaa !84
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %61, !prof !117, !llvm.loop !118

107:                                              ; preds = %102, %55, %67, %17, %15
  %108 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !75
  %110 = load i64, ptr %5, align 8, !tbaa !70
  %111 = getelementptr inbounds %struct.fibnode, ptr %109, i64 0, i32 4
  %112 = load i64, ptr %111, align 8, !tbaa !70
  %113 = icmp sgt i64 %110, %112
  br i1 %113, label %115, label %114, !prof !119

114:                                              ; preds = %107
  store ptr %1, ptr %108, align 8, !tbaa !75
  br label %115

115:                                              ; preds = %107, %114, %8, %4
  %116 = phi ptr [ null, %4 ], [ %10, %8 ], [ %10, %114 ], [ %10, %107 ]
  ret ptr %116
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @fibheap_replace_data(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 !prof !45 {
  %4 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = tail call ptr @fibheap_replace_key_data(ptr noundef %0, ptr noundef %1, i64 noundef %5, ptr noundef %2)
  ret ptr %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @fibheap_replace_key(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !prof !120 {
  %4 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call ptr @fibheap_replace_key_data(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %7)
  %9 = shl i64 %5, 32
  %10 = ashr exact i64 %9, 32
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @fibheap_delete_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !121 {
  %3 = getelementptr inbounds %struct.fibnode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call ptr @fibheap_replace_key_data(ptr noundef %0, ptr noundef %1, i64 noundef -9223372036854775808, ptr noundef %4)
  %6 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9, !prof !122

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !49
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %10) #19
  tail call void @abort() #20
  unreachable

12:                                               ; preds = %2
  %13 = icmp eq ptr %7, null
  br i1 %13, label %16, label %14, !prof !123

14:                                               ; preds = %12
  %15 = tail call fastcc ptr @fibheap_extr_min_node(ptr noundef %0)
  tail call void @free(ptr noundef %15)
  br label %16

16:                                               ; preds = %12, %14
  ret ptr %4
}

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @fibheap_delete(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !64 {
  %2 = getelementptr inbounds %struct.fibheap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !124

5:                                                ; preds = %1, %5
  %6 = tail call fastcc ptr @fibheap_extr_min_node(ptr noundef %0)
  tail call void @free(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !124, !llvm.loop !125

9:                                                ; preds = %5, %1
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @fibheap_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !126 {
  %2 = load i64, ptr %0, align 8, !tbaa !77
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }

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
!35 = !{ptr @fibheap_new, ptr @xcalloc, i64 192}
!36 = !{ptr @fibheap_insert, ptr @xcalloc, i64 57398}
!37 = !{ptr @fibheap_extract_min, ptr @fibheap_extr_min_node, i64 45317}
!38 = !{ptr @fibheap_extract_min, ptr @free, i64 45317}
!39 = !{ptr @fibheap_replace_key, ptr @fibheap_replace_key_data, i64 3375}
!40 = !{ptr @fibheap_delete_node, ptr @fibheap_replace_key_data, i64 12081}
!41 = !{ptr @fibheap_delete_node, ptr @fibheap_extr_min_node, i64 12081}
!42 = !{ptr @fibheap_delete_node, ptr @free, i64 12081}
!43 = !{ptr @fibheap_delete, ptr @free, i64 192}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!54, !50, i64 8}
!54 = !{!"_IO_FILE", !55, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !50, i64 104, !55, i64 112, !55, i64 116, !56, i64 120, !57, i64 128, !51, i64 130, !51, i64 131, !50, i64 136, !56, i64 144, !50, i64 152, !50, i64 160, !50, i64 168, !50, i64 176, !56, i64 184, !55, i64 192, !51, i64 196}
!55 = !{!"int", !51, i64 0}
!56 = !{!"long", !51, i64 0}
!57 = !{!"short", !51, i64 0}
!58 = !{!54, !50, i64 16}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!51, !51, i64 0}
!61 = !{!54, !50, i64 40}
!62 = !{!54, !50, i64 48}
!63 = !{!54, !55, i64 0}
!64 = !{!"function_entry_count", i64 192}
!65 = !{!"function_entry_count", i64 57398}
!66 = !{!67, !50, i64 16}
!67 = !{!"fibnode", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !56, i64 32, !50, i64 40, !55, i64 48, !55, i64 51}
!68 = !{!67, !50, i64 24}
!69 = !{!67, !50, i64 40}
!70 = !{!67, !56, i64 32}
!71 = !{!72, !50, i64 16}
!72 = !{!"fibheap", !56, i64 0, !50, i64 8, !50, i64 16}
!73 = !{!"branch_weights", i32 194, i32 57204}
!74 = !{!"branch_weights", i32 192, i32 57012}
!75 = !{!72, !50, i64 8}
!76 = !{!"branch_weights", i32 198, i32 57006}
!77 = !{!72, !56, i64 0}
!78 = !{!"function_entry_count", i64 45319}
!79 = !{!"branch_weights", i32 2, i32 45317}
!80 = !{!"fibheap.c;fibheap_extr_min_node"}
!81 = !{!67, !50, i64 8}
!82 = !{!"branch_weights", i32 1, i32 57397}
!83 = !{!"branch_weights", i32 37468, i32 181339}
!84 = !{!67, !50, i64 0}
!85 = !{!"branch_weights", i32 0, i32 218807}
!86 = !{!"branch_weights", i32 505, i32 218302}
!87 = !{!"branch_weights", i32 161410, i32 57397}
!88 = distinct !{!88, !47, !48}
!89 = !{!"branch_weights", i32 57204, i32 0}
!90 = !{!"branch_weights", i32 1, i32 57203}
!91 = !{!"branch_weights", i32 57204, i32 488336}
!92 = !{!"branch_weights", i32 488336, i32 0}
!93 = !{!"branch_weights", i32 325199, i32 220341}
!94 = !{!"branch_weights", i32 54719, i32 165622}
!95 = !{!"branch_weights", i32 37765, i32 182576}
!96 = !{!"branch_weights", i32 31711, i32 150865}
!97 = !{!"branch_weights", i32 220341, i32 0}
!98 = distinct !{!98, !47, !48}
!99 = !{!"branch_weights", i32 57203, i32 488337}
!100 = distinct !{!100, !47, !48}
!101 = !{!"branch_weights", i32 3393061, i32 325199}
!102 = !{!"branch_weights", i32 57204, i32 267995}
!103 = !{!"branch_weights", i32 56505, i32 211490}
!104 = !{!"branch_weights", i32 64428, i32 203567}
!105 = !{!"branch_weights", i32 57204, i32 3661056}
!106 = distinct !{!106, !47, !48}
!107 = !{!"function_entry_count", i64 15456}
!108 = !{!"branch_weights", i32 0, i32 15456}
!109 = !{!"branch_weights", i32 13942, i32 1514}
!110 = !{!"branch_weights", i32 13, i32 1501}
!111 = !{!"branch_weights", i32 598, i32 936}
!112 = !{!"branch_weights", i32 297, i32 1237}
!113 = !{!"branch_weights", i32 0, i32 1534}
!114 = !{!"branch_weights", i32 2, i32 1532}
!115 = !{!"branch_weights", i32 1, i32 743}
!116 = !{!"branch_weights", i32 757, i32 33}
!117 = !{!"branch_weights", i32 743, i32 47}
!118 = distinct !{!118, !47, !48}
!119 = !{!"branch_weights", i32 2397, i32 13059}
!120 = !{!"function_entry_count", i64 3375}
!121 = !{!"function_entry_count", i64 12081}
!122 = !{!"branch_weights", i32 12081, i32 0}
!123 = !{!"branch_weights", i32 0, i32 12081}
!124 = !{!"branch_weights", i32 1, i32 0}
!125 = distinct !{!125, !47, !48}
!126 = !{!"function_entry_count", i64 45329}
