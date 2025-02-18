; ModuleID = 'xz/file_io.c'
source_filename = "xz/file_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.file_pair = type { ptr, ptr, i32, i32, i8, i8, i64 }

@io_open_src.pair = internal global %struct.file_pair zeroinitializer, align 8
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"%s: Seeking failed when trying to create a sparse file: %s\00", align 1
@user_abort = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: Read error: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: Error seeking the file: %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Unexpected end of file\00", align 1
@opt_stdout = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"(benchmark output)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: Closing the file failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: Write error: %s\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @io_init() local_unnamed_addr #0 !prof !34 {
  tail call void @tuklib_open_stdxxx(i32 noundef 1) #7
  ret void
}

declare void @tuklib_open_stdxxx(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @io_no_sparse() local_unnamed_addr #2 !prof !34 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @io_open_src(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @is_empty_filename(ptr noundef %0) #7
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  store ptr %0, ptr @io_open_src.pair, align 8, !tbaa.struct !35
  store ptr null, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 1), align 8, !tbaa.struct !46
  store i32 -1, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 2), align 8, !tbaa.struct !47
  store i32 -1, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 3), align 4, !tbaa.struct !48
  store i8 0, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 4), align 8, !tbaa.struct !49
  store i8 0, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 5), align 1, !tbaa.struct !50
  store i64 0, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 6), align 8, !tbaa.struct !51
  tail call void @signals_block() #7
  %4 = load i8, ptr @opt_stdout, align 1, !tbaa !42, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @signals_unblock() #7
  br label %7

7:                                                ; preds = %6, %3
  br label %8

8:                                                ; preds = %7, %13
  %9 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %10 = load ptr, ptr @io_open_src.pair, align 8, !tbaa !54
  %11 = tail call i32 @spec_mem_open(ptr noundef %9, i32 noundef 3, ptr noundef %10, i32 noundef 256) #7
  store i32 %11, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 2), align 8, !tbaa !56
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #8
  %15 = load i32, ptr %14, align 4, !tbaa !40
  %16 = icmp eq i32 %15, 4
  %17 = load i32, ptr @user_abort, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %8, label %20, !llvm.loop !57

20:                                               ; preds = %13, %8
  br i1 %5, label %22, label %21

21:                                               ; preds = %20
  tail call void @signals_block() #7
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 2), align 8, !tbaa !56
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = tail call ptr @__errno_location() #8
  %27 = load i32, ptr %26, align 4, !tbaa !40
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @io_open_src.pair, align 8, !tbaa !54
  %31 = tail call ptr @strerror(i32 noundef %27) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.4, ptr noundef %30, ptr noundef %31) #7
  br label %32

32:                                               ; preds = %22, %25, %29
  %33 = phi ptr [ @io_open_src.pair, %22 ], [ null, %25 ], [ null, %29 ]
  tail call void @signals_unblock() #7
  br label %34

34:                                               ; preds = %1, %32
  %35 = phi ptr [ %33, %32 ], [ null, %1 ]
  ret ptr %35
}

declare zeroext i1 @is_empty_filename(ptr noundef) local_unnamed_addr #1

declare void @signals_block() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @signals_unblock() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @io_open_dest(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @signals_block() #7
  %2 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !60
  %3 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %4 = tail call i32 @spec_mem_open(ptr noundef %3, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  %5 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 4, !tbaa !61
  %6 = icmp eq i32 %4, -1
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !60
  %9 = tail call ptr @__errno_location() #8
  %10 = load i32, ptr %9, align 4, !tbaa !40
  %11 = tail call ptr @strerror(i32 noundef %10) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef %11) #7
  %12 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void @free(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %1, %7
  tail call void @signals_unblock() #7
  ret i1 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @io_close(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca [1 x i8], align 1
  br i1 %1, label %4, label %27

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !62, !range !52, !noundef !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 6
  %10 = load i64, ptr %9, align 8, !tbaa !63
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !61
  %16 = add nsw i64 %10, -1
  %17 = tail call i64 @spec_mem_lseek(ptr noundef %13, i32 noundef 3, i32 noundef %15, i64 noundef %16, i32 noundef 1) #7
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = tail call ptr @__errno_location() #8
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = tail call ptr @strerror(i32 noundef %23) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %21, ptr noundef %24) #7
  br label %27

25:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  %26 = call fastcc zeroext i1 @io_write_buf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %27

27:                                               ; preds = %19, %25, %8, %4, %2
  call void @signals_block() #7
  %28 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !61
  switch i32 %29, label %30 [
    i32 -1, label %43
    i32 1, label %43
  ]

30:                                               ; preds = %27
  %31 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %32 = call i32 @spec_mem_close(ptr noundef %31, i32 noundef 3, i32 noundef %29) #7
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  br i1 %33, label %41, label %36

36:                                               ; preds = %30
  %37 = tail call ptr @__errno_location() #8
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = call ptr @strerror(i32 noundef %38) #7
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.6, ptr noundef %35, ptr noundef %39) #7
  %40 = load ptr, ptr %34, align 8, !tbaa !60
  br label %41

41:                                               ; preds = %30, %36
  %42 = phi ptr [ %40, %36 ], [ %35, %30 ]
  call void @free(ptr noundef %42) #7
  br label %43

43:                                               ; preds = %41, %27, %27
  %44 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %45 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !56
  %47 = call i32 @spec_mem_close(ptr noundef %44, i32 noundef 3, i32 noundef %46) #7
  call void @signals_unblock() #7
  ret void
}

declare i64 @spec_mem_lseek(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @io_write_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %28, %3
  %7 = phi ptr [ %1, %3 ], [ %29, %28 ]
  %8 = phi i64 [ %2, %3 ], [ %30, %28 ]
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %12 = load i32, ptr %4, align 4, !tbaa !61
  %13 = tail call i64 @spec_mem_write(ptr noundef %11, i32 noundef 3, i32 noundef %12, ptr noundef %7, i64 noundef %8) #7
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = tail call ptr @__errno_location() #8
  %17 = load i32, ptr %16, align 4, !tbaa !40
  switch i32 %17, label %22 [
    i32 4, label %18
    i32 32, label %28
  ]

18:                                               ; preds = %15
  %19 = load i32, ptr @user_abort, align 4, !tbaa !40
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 2, i32 1
  br label %28, !llvm.loop !64

22:                                               ; preds = %15
  %23 = load ptr, ptr %5, align 8, !tbaa !60
  %24 = tail call ptr @strerror(i32 noundef %17) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.7, ptr noundef %23, ptr noundef %24) #7
  br label %28

25:                                               ; preds = %10
  %26 = getelementptr inbounds i8, ptr %7, i64 %13
  %27 = sub i64 %8, %13
  br label %28

28:                                               ; preds = %22, %15, %18, %25
  %29 = phi ptr [ %26, %25 ], [ %7, %18 ], [ %7, %15 ], [ %7, %22 ]
  %30 = phi i64 [ %27, %25 ], [ %8, %18 ], [ %8, %15 ], [ %8, %22 ]
  %31 = phi i32 [ 0, %25 ], [ %21, %18 ], [ 1, %15 ], [ 1, %22 ]
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %6

33:                                               ; preds = %28, %6
  ret i1 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @io_read(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %5, %34
  %10 = phi i64 [ %2, %5 ], [ %32, %34 ]
  %11 = phi ptr [ %1, %5 ], [ %31, %34 ]
  %12 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %13 = load i32, ptr %6, align 8, !tbaa !56
  %14 = tail call i64 @spec_mem_read(ptr noundef %12, i32 noundef 3, i32 noundef %13, ptr noundef %11, i64 noundef %10) #7
  switch i64 %14, label %27 [
    i64 0, label %15
    i64 -1, label %16
  ]

15:                                               ; preds = %9
  store i8 1, ptr %8, align 8, !tbaa !65
  br label %30

16:                                               ; preds = %9
  %17 = tail call ptr @__errno_location() #8
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, ptr @user_abort, align 4, !tbaa !40
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 2, i32 1
  br label %30, !llvm.loop !66

24:                                               ; preds = %16
  %25 = load ptr, ptr %0, align 8, !tbaa !54
  %26 = tail call ptr @strerror(i32 noundef %18) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1, ptr noundef %25, ptr noundef %26) #7
  store i8 1, ptr %7, align 8, !tbaa !65
  br label %30

27:                                               ; preds = %9
  %28 = getelementptr inbounds i8, ptr %11, i64 %14
  %29 = sub i64 %10, %14
  br label %30

30:                                               ; preds = %20, %27, %24, %15
  %31 = phi ptr [ %11, %15 ], [ %11, %24 ], [ %28, %27 ], [ %11, %20 ]
  %32 = phi i64 [ %10, %15 ], [ %10, %24 ], [ %29, %27 ], [ %10, %20 ]
  %33 = phi i32 [ 3, %15 ], [ 1, %24 ], [ 0, %27 ], [ %23, %20 ]
  switch i32 %33, label %39 [
    i32 0, label %34
    i32 3, label %36
    i32 2, label %34
  ]

34:                                               ; preds = %30, %30
  %35 = icmp eq i64 %32, 0
  br i1 %35, label %36, label %9, !llvm.loop !66

36:                                               ; preds = %34, %30, %3
  %37 = phi i64 [ 0, %3 ], [ 0, %34 ], [ %32, %30 ]
  %38 = sub i64 %2, %37
  br label %39

39:                                               ; preds = %30, %36
  %40 = phi i64 [ %38, %36 ], [ -1, %30 ]
  ret i64 %40
}

declare i64 @spec_mem_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @io_pread(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = tail call i64 @spec_mem_lseek(ptr noundef %5, i32 noundef 3, i32 noundef %7, i64 noundef %3, i32 noundef 0) #7
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !54
  %12 = tail call ptr @__errno_location() #8
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = tail call ptr @strerror(i32 noundef %13) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.2, ptr noundef %11, ptr noundef %14) #7
  br label %22

15:                                               ; preds = %4
  %16 = tail call i64 @io_read(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = icmp eq i64 %16, %2
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !54
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.3, ptr noundef %21) #7
  br label %22

22:                                               ; preds = %20, %15, %18, %10
  %23 = phi i1 [ true, %10 ], [ true, %20 ], [ true, %15 ], [ false, %18 ]
  ret i1 %23
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @io_write(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !62, !range !52, !noundef !53
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  switch i64 %2, label %20 [
    i64 8192, label %11
    i64 0, label %39
  ]

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, 1024
  br i1 %10, label %16, label %11, !llvm.loop !67

11:                                               ; preds = %7, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %7 ]
  %13 = getelementptr inbounds [1024 x i64], ptr %1, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !68
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %8, label %20

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 6
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = add i64 %18, 8192
  store i64 %19, ptr %17, align 8, !tbaa !63
  br label %39

20:                                               ; preds = %11, %7
  %21 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 6
  %22 = load i64, ptr %21, align 8, !tbaa !63
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load ptr, ptr @spec_fd, align 8, !tbaa !36
  %26 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !61
  %28 = tail call i64 @spec_mem_lseek(ptr noundef %25, i32 noundef 3, i32 noundef %27, i64 noundef %22, i32 noundef 1) #7
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = tail call ptr @__errno_location() #8
  %34 = load i32, ptr %33, align 4, !tbaa !40
  %35 = tail call ptr @strerror(i32 noundef %34) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %32, ptr noundef %35) #7
  br label %39

36:                                               ; preds = %24
  store i64 0, ptr %21, align 8, !tbaa !63
  br label %37

37:                                               ; preds = %20, %36, %3
  %38 = tail call fastcc zeroext i1 @io_write_buf(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  br label %39

39:                                               ; preds = %7, %37, %30, %16
  %40 = phi i1 [ false, %16 ], [ true, %30 ], [ %38, %37 ], [ false, %7 ]
  ret i1 %40
}

declare i32 @spec_mem_open(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare i32 @spec_mem_close(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @spec_mem_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 4, !40, i64 20, i64 4, !40, i64 24, i64 1, !42, i64 25, i64 1, !42, i64 32, i64 8, !44}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"_Bool", !38, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{i64 0, i64 8, !36, i64 8, i64 4, !40, i64 12, i64 4, !40, i64 16, i64 1, !42, i64 17, i64 1, !42, i64 24, i64 8, !44}
!47 = !{i64 0, i64 4, !40, i64 4, i64 4, !40, i64 8, i64 1, !42, i64 9, i64 1, !42, i64 16, i64 8, !44}
!48 = !{i64 0, i64 4, !40, i64 4, i64 1, !42, i64 5, i64 1, !42, i64 12, i64 8, !44}
!49 = !{i64 0, i64 1, !42, i64 1, i64 1, !42, i64 8, i64 8, !44}
!50 = !{i64 0, i64 1, !42, i64 7, i64 8, !44}
!51 = !{i64 0, i64 8, !44}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!55, !37, i64 0}
!55 = !{!"", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !43, i64 24, !43, i64 25, !45, i64 32}
!56 = !{!55, !41, i64 16}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!55, !37, i64 8}
!61 = !{!55, !41, i64 20}
!62 = !{!55, !43, i64 25}
!63 = !{!55, !45, i64 32}
!64 = distinct !{!64, !58, !59}
!65 = !{!55, !43, i64 24}
!66 = distinct !{!66, !58, !59}
!67 = distinct !{!67, !58, !59}
!68 = !{!38, !38, i64 0}
