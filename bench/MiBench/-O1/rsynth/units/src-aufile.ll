; ModuleID = 'src/aufile.c'
source_filename = "src/aufile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@file_write = dso_local local_unnamed_addr global ptr null, align 8
@file_term = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"File output\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@linear_file = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Raw 16-bit linear pathname\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@au_file = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Sun/Next audio file name\00", align 1
@help_only = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@au_fd = internal unnamed_addr global i32 -1, align 4
@samp_rate = external local_unnamed_addr global i64, align 8
@au_encoding = internal unnamed_addr global i1 false, align 4
@au_size = internal unnamed_addr global i32 0, align 4
@linear_fd = internal unnamed_addr global i32 -1, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@_l2u = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"%s : No memory for ulaw data\0A\00", align 1
@program = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @au_header(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = icmp eq ptr %4, null
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi i64 [ 24, %5 ], [ %18, %13 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  %15 = lshr i64 779316836, %14
  %16 = trunc i64 %15 to i8
  store i8 %16, ptr %11, align 1, !tbaa !5
  %17 = call i64 @write(i32 noundef %0, ptr noundef nonnull %11, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %18 = add nsw i64 %14, -8
  %19 = icmp eq i64 %14, 0
  br i1 %19, label %20, label %13, !llvm.loop !8

20:                                               ; preds = %13
  %21 = select i1 %12, ptr @.str, ptr %4
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #11
  %23 = add i64 %22, 24
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i64 [ 24, %20 ], [ %29, %24 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  %26 = lshr i64 %23, %25
  %27 = trunc i64 %26 to i8
  store i8 %27, ptr %10, align 1, !tbaa !5
  %28 = call i64 @write(i32 noundef %0, ptr noundef nonnull %10, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %29 = add nsw i64 %25, -8
  %30 = icmp eq i64 %25, 0
  br i1 %30, label %31, label %24, !llvm.loop !8

31:                                               ; preds = %24
  %32 = zext i32 %3 to i64
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 24, %31 ], [ %38, %33 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  %35 = lshr i64 %32, %34
  %36 = trunc i64 %35 to i8
  store i8 %36, ptr %9, align 1, !tbaa !5
  %37 = call i64 @write(i32 noundef %0, ptr noundef nonnull %9, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %38 = add nsw i64 %34, -8
  %39 = icmp eq i64 %34, 0
  br i1 %39, label %40, label %33, !llvm.loop !8

40:                                               ; preds = %33
  %41 = zext i32 %1 to i64
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i64 [ 24, %40 ], [ %47, %42 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  %44 = lshr i64 %41, %43
  %45 = trunc i64 %44 to i8
  store i8 %45, ptr %8, align 1, !tbaa !5
  %46 = call i64 @write(i32 noundef %0, ptr noundef nonnull %8, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %47 = add nsw i64 %43, -8
  %48 = icmp eq i64 %43, 0
  br i1 %48, label %49, label %42, !llvm.loop !8

49:                                               ; preds = %42
  %50 = zext i32 %2 to i64
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 24, %49 ], [ %56, %51 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  %53 = lshr i64 %50, %52
  %54 = trunc i64 %53 to i8
  store i8 %54, ptr %7, align 1, !tbaa !5
  %55 = call i64 @write(i32 noundef %0, ptr noundef nonnull %7, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %56 = add nsw i64 %52, -8
  %57 = icmp eq i64 %52, 0
  br i1 %57, label %58, label %51, !llvm.loop !8

58:                                               ; preds = %51, %58
  %59 = phi i64 [ %63, %58 ], [ 24, %51 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  %60 = lshr i64 1, %59
  %61 = trunc i64 %60 to i8
  store i8 %61, ptr %6, align 1, !tbaa !5
  %62 = call i64 @write(i32 noundef %0, ptr noundef nonnull %6, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %63 = add nsw i64 %59, -8
  %64 = icmp eq i64 %59, 0
  br i1 %64, label %65, label %58, !llvm.loop !8

65:                                               ; preds = %58
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #11
  %67 = tail call i64 @write(i32 noundef %0, ptr noundef nonnull %21, i64 noundef %66) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @file_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.1, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull @linear_file, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, ptr noundef nonnull @au_file, ptr noundef nonnull @.str.5, ptr noundef null) #10
  %4 = load i32, ptr @help_only, align 4, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = load ptr, ptr @au_file, align 8, !tbaa !12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str.6) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, ptr @au_fd, align 4, !tbaa !10
  br label %18

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %7, i32 noundef 577, i32 noundef 438) #10
  store i32 %14, ptr @au_fd, align 4, !tbaa !10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr @au_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %13, %16, %12
  %19 = load i32, ptr @au_fd, align 4, !tbaa !10
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, ptr @samp_rate, align 8, !tbaa !14
  %23 = icmp sgt i64 %22, 8000
  %24 = select i1 %23, i32 3, i32 1
  store i1 %23, ptr @au_encoding, align 4
  %25 = trunc i64 %22 to i32
  tail call void @au_header(i32 noundef %19, i32 noundef %24, i32 noundef %25, i32 noundef -1, ptr noundef nonnull @.str)
  store i32 0, ptr @au_size, align 4, !tbaa !10
  br label %26

26:                                               ; preds = %18, %21, %6
  %27 = load ptr, ptr @linear_file, align 8, !tbaa !12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(2) @.str.6) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, ptr @linear_fd, align 4, !tbaa !10
  br label %38

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %27, i32 noundef 577, i32 noundef 438) #10
  store i32 %34, ptr @linear_fd, align 4, !tbaa !10
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr @linear_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %37) #12
  br label %38

38:                                               ; preds = %32, %36, %33, %26
  %39 = load i32, ptr @au_fd, align 4, !tbaa !10
  %40 = icmp sgt i32 %39, -1
  %41 = load i32, ptr @linear_fd, align 4
  %42 = icmp sgt i32 %41, -1
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store ptr @aufile_write, ptr @file_write, align 8, !tbaa !12
  store ptr @aufile_term, ptr @file_term, align 8, !tbaa !12
  br label %45

45:                                               ; preds = %44, %38, %2
  ret i32 %3
}

declare i32 @getargs(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @aufile_write(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %58

4:                                                ; preds = %2
  %5 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = shl nuw i32 %0, 1
  %9 = zext i32 %8 to i64
  %10 = tail call i64 @write(i32 noundef %5, ptr noundef %1, i64 noundef %9) #10
  %11 = icmp eq i64 %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @perror(ptr noundef nonnull @.str.7) #12
  br label %13

13:                                               ; preds = %7, %12, %4
  %14 = load i32, ptr @au_fd, align 4, !tbaa !10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load i1, ptr @au_encoding, align 4
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = shl nuw i32 %0, 1
  %20 = zext i32 %19 to i64
  %21 = tail call i64 @write(i32 noundef %14, ptr noundef %1, i64 noundef %20) #10
  %22 = icmp eq i64 %21, %20
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @perror(ptr noundef nonnull @.str.7) #12
  br label %58

24:                                               ; preds = %18
  %25 = load i32, ptr @au_size, align 4, !tbaa !10
  %26 = add i32 %25, %19
  store i32 %26, ptr @au_size, align 4, !tbaa !10
  br label %58

27:                                               ; preds = %16
  %28 = zext nneg i32 %0 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 %28
  %33 = load ptr, ptr @_l2u, align 8, !tbaa !12
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %1, %31 ], [ %37, %34 ]
  %36 = phi ptr [ %29, %31 ], [ %43, %34 ]
  %37 = getelementptr inbounds i16, ptr %35, i64 1
  %38 = load i16, ptr %35, align 2, !tbaa !16
  %39 = ashr i16 %38, 3
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %42, ptr %36, align 1, !tbaa !5
  %44 = icmp ult ptr %43, %32
  br i1 %44, label %34, label %45, !llvm.loop !18

45:                                               ; preds = %34
  %46 = tail call i64 @write(i32 noundef %14, ptr noundef nonnull %29, i64 noundef %28) #10
  %47 = icmp eq i64 %46, %28
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @au_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %49) #12
  br label %53

50:                                               ; preds = %45
  %51 = load i32, ptr @au_size, align 4, !tbaa !10
  %52 = add i32 %51, %0
  store i32 %52, ptr @au_size, align 4, !tbaa !10
  br label %53

53:                                               ; preds = %50, %48
  tail call void @free(ptr noundef %29) #10
  br label %58

54:                                               ; preds = %27
  %55 = load ptr, ptr @stderr, align 8, !tbaa !12
  %56 = load ptr, ptr @program, align 8, !tbaa !12
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.8, ptr noundef %56) #12
  br label %58

58:                                               ; preds = %53, %54, %23, %24, %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aufile_term() #3 {
  %1 = alloca i8, align 1
  %2 = load i32, ptr @au_fd, align 4, !tbaa !10
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  %5 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 1) #10
  %6 = icmp sgt i64 %5, -1
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load i32, ptr @au_fd, align 4, !tbaa !10
  %9 = tail call i32 @ftruncate(i32 noundef %8, i64 noundef %5) #10
  %10 = load i32, ptr @au_fd, align 4, !tbaa !10
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 8, i32 noundef 0) #10
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load i32, ptr @au_fd, align 4, !tbaa !10
  %15 = load i32, ptr @au_size, align 4, !tbaa !10
  %16 = zext i32 %15 to i64
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 24, %13 ], [ %22, %17 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #10
  %19 = lshr i64 %16, %18
  %20 = trunc i64 %19 to i8
  store i8 %20, ptr %1, align 1, !tbaa !5
  %21 = call i64 @write(i32 noundef %14, ptr noundef nonnull %1, i64 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #10
  %22 = add nsw i64 %18, -8
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %17, !llvm.loop !8

24:                                               ; preds = %17, %7, %4
  %25 = load i32, ptr @au_fd, align 4, !tbaa !10
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @close(i32 noundef %25) #10
  br label %29

29:                                               ; preds = %27, %24
  store i32 -1, ptr @au_fd, align 4, !tbaa !10
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = tail call i64 @lseek(i32 noundef %31, i64 noundef 0, i32 noundef 1) #10
  %35 = tail call i32 @ftruncate(i32 noundef %31, i64 noundef %34) #10
  %36 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @close(i32 noundef %36) #10
  br label %40

40:                                               ; preds = %38, %33
  store i32 -1, ptr @linear_fd, align 4, !tbaa !10
  br label %41

41:                                               ; preds = %40, %30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = distinct !{!18, !9}
