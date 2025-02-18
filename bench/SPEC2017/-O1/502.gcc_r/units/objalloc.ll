; ModuleID = 'objalloc.c'
source_filename = "objalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.objalloc = type { ptr, i32, ptr }
%struct.objalloc_chunk = type { ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

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
  br i1 %23, label %7, label %24, !llvm.loop !50

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local noalias noundef ptr @objalloc_create() local_unnamed_addr #7 !prof !34 {
  %1 = tail call dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call dereferenceable_or_null(4064) ptr @malloc(i64 noundef 4064) #16
  %5 = getelementptr inbounds %struct.objalloc, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !53
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @free(ptr noundef %1)
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %4, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %9, ptr %1, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.objalloc, ptr %1, i64 0, i32 1
  store i32 4048, ptr %10, align 8, !tbaa !56
  br label %11

11:                                               ; preds = %0, %8, %7
  %12 = phi ptr [ null, %7 ], [ %1, %8 ], [ null, %0 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local ptr @_objalloc_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !34 {
  br label %3

3:                                                ; preds = %32, %2
  %4 = phi i64 [ %1, %2 ], [ %7, %32 ]
  %5 = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %6 = add i64 %5, 7
  %7 = and i64 %6, -8
  %8 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = zext i32 %9 to i64
  %11 = icmp ugt i64 %7, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !55
  %14 = getelementptr inbounds i8, ptr %13, i64 %7
  store ptr %14, ptr %0, align 8, !tbaa !55
  %15 = trunc i64 %7 to i32
  %16 = sub i32 %9, %15
  store i32 %16, ptr %8, align 8, !tbaa !56
  br label %37

17:                                               ; preds = %3
  %18 = icmp ugt i64 %7, 511
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  %20 = add i64 %7, 16
  %21 = tail call ptr @malloc(i64 noundef %20) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  store ptr %25, ptr %21, align 8, !tbaa !57
  %26 = load ptr, ptr %0, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.objalloc_chunk, ptr %21, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !59
  store ptr %21, ptr %24, align 8, !tbaa !53
  %28 = getelementptr inbounds i8, ptr %21, i64 16
  br label %37

29:                                               ; preds = %17
  %30 = tail call dereferenceable_or_null(4064) ptr @malloc(i64 noundef 4064) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  store ptr %34, ptr %30, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.objalloc_chunk, ptr %30, i64 0, i32 1
  store ptr null, ptr %35, align 8, !tbaa !59
  %36 = getelementptr inbounds i8, ptr %30, i64 16
  store ptr %36, ptr %0, align 8, !tbaa !55
  store i32 4048, ptr %8, align 8, !tbaa !56
  store ptr %30, ptr %33, align 8, !tbaa !53
  br label %3

37:                                               ; preds = %29, %23, %19, %12
  %38 = phi ptr [ %13, %12 ], [ %28, %23 ], [ null, %19 ], [ null, %29 ]
  ret ptr %38
}

; Function Attrs: cold nounwind uwtable
define dso_local void @objalloc_free(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @free(ptr noundef %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !60

9:                                                ; preds = %5, %1
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @objalloc_free_block(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %20
  %7 = phi ptr [ %22, %20 ], [ %4, %2 ]
  %8 = phi ptr [ %21, %20 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.objalloc_chunk, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = icmp ult ptr %7, %1
  %14 = getelementptr inbounds i8, ptr %7, i64 4064
  %15 = icmp ugt ptr %14, %1
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %25, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds i8, ptr %7, i64 16
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %17
  %21 = phi ptr [ %8, %17 ], [ %7, %12 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !61

24:                                               ; preds = %20, %2
  tail call void @abort() #17
  unreachable

25:                                               ; preds = %17, %12
  br i1 %11, label %26, label %54

26:                                               ; preds = %25
  %27 = load ptr, ptr %3, align 8, !tbaa !53
  %28 = icmp eq ptr %27, %7
  br i1 %28, label %50, label %29

29:                                               ; preds = %26, %46
  %30 = phi ptr [ %48, %46 ], [ %8, %26 ]
  %31 = phi ptr [ %33, %46 ], [ %27, %26 ]
  %32 = phi ptr [ %47, %46 ], [ null, %26 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !57
  %34 = icmp eq ptr %30, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %30, %31
  %37 = select i1 %36, ptr null, ptr %30
  tail call void @free(ptr noundef %31)
  br label %46

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.objalloc_chunk, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  %41 = icmp ugt ptr %40, %1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @free(ptr noundef %31)
  br label %46

43:                                               ; preds = %38
  %44 = icmp eq ptr %32, null
  %45 = select i1 %44, ptr %31, ptr %32
  br label %46

46:                                               ; preds = %43, %42, %35
  %47 = phi ptr [ %32, %35 ], [ %32, %42 ], [ %45, %43 ]
  %48 = phi ptr [ %37, %35 ], [ null, %42 ], [ null, %43 ]
  %49 = icmp eq ptr %33, %7
  br i1 %49, label %50, label %29, !llvm.loop !62

50:                                               ; preds = %46, %26
  %51 = phi ptr [ null, %26 ], [ %47, %46 ]
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr %7, ptr %51
  store ptr %53, ptr %3, align 8, !tbaa !53
  br label %72

54:                                               ; preds = %25
  %55 = load ptr, ptr %7, align 8, !tbaa !57
  %56 = load ptr, ptr %3, align 8, !tbaa !53
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %62, label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %60, %58 ], [ %56, %54 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  tail call void @free(ptr noundef %59)
  %61 = icmp eq ptr %60, %55
  br i1 %61, label %62, label %58, !llvm.loop !63

62:                                               ; preds = %58, %54
  store ptr %55, ptr %3, align 8, !tbaa !53
  %63 = getelementptr inbounds %struct.objalloc_chunk, ptr %55, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !59
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %68, %66 ], [ %55, %62 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = getelementptr inbounds %struct.objalloc_chunk, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %66, !llvm.loop !64

72:                                               ; preds = %66, %62, %50
  %73 = phi ptr [ %1, %50 ], [ %10, %62 ], [ %10, %66 ]
  %74 = phi ptr [ %7, %50 ], [ %55, %62 ], [ %68, %66 ]
  store ptr %73, ptr %0, align 8, !tbaa !55
  %75 = getelementptr inbounds i8, ptr %74, i64 4064
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %73 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 1
  store i32 %79, ptr %80, align 8, !tbaa !56
  ret void
}

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { allocsize(0) }
attributes #17 = { noreturn nounwind }

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
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!54, !36, i64 16}
!54 = !{!"objalloc", !36, i64 0, !41, i64 8, !36, i64 16}
!55 = !{!54, !36, i64 0}
!56 = !{!54, !41, i64 8}
!57 = !{!58, !36, i64 0}
!58 = !{!"objalloc_chunk", !36, i64 0, !36, i64 8}
!59 = !{!58, !36, i64 8}
!60 = distinct !{!60, !51, !52}
!61 = distinct !{!61, !51, !52}
!62 = distinct !{!62, !51, !52}
!63 = distinct !{!63, !51, !52}
!64 = distinct !{!64, !51, !52}
