; ModuleID = 'xz/file_io.c'
source_filename = "xz/file_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.file_pair = type { ptr, ptr, i32, i32, i8, i8, i64 }

@io_open_src.pair = internal global %struct.file_pair zeroinitializer, align 8
@opt_stdout = external local_unnamed_addr global i8, align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@user_abort = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(benchmark output)\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%s: Seeking failed when trying to create a sparse file: %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: Write error: %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: Closing the file failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: Read error: %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: Error seeking the file: %s\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: Unexpected end of file\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @io_init() local_unnamed_addr #0 {
  tail call void @tuklib_open_stdxxx(i32 noundef 1) #8
  ret void
}

; Function Attrs: optsize
declare void @tuklib_open_stdxxx(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @io_no_sparse() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @io_open_src(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @is_empty_filename(ptr noundef %0) #8
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  store ptr %0, ptr @io_open_src.pair, align 8, !tbaa.struct !6
  store ptr null, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 1), align 8, !tbaa.struct !17
  store i32 -1, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 2), align 8, !tbaa.struct !18
  store i32 -1, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 3), align 4, !tbaa.struct !19
  store i8 0, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 4), align 8, !tbaa.struct !20
  store i8 0, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 5), align 1, !tbaa.struct !21
  store i64 0, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 6), align 8, !tbaa.struct !22
  tail call void @signals_block() #8
  %4 = tail call fastcc zeroext i1 @io_open_src_real() #9
  tail call void @signals_unblock() #8
  %5 = select i1 %4, ptr null, ptr @io_open_src.pair
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i1 @is_empty_filename(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @signals_block() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @io_open_src_real() unnamed_addr #0 {
  %1 = load i8, ptr @opt_stdout, align 1, !tbaa !13, !range !23, !noundef !24
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @signals_unblock() #8
  br label %4

4:                                                ; preds = %3, %0
  br label %5

5:                                                ; preds = %4, %10
  %6 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %7 = load ptr, ptr @io_open_src.pair, align 8, !tbaa !25
  %8 = tail call i32 @spec_mem_open(ptr noundef %6, i32 noundef 3, ptr noundef %7, i32 noundef 256) #8
  store i32 %8, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 2), align 8, !tbaa !27
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = tail call ptr @__errno_location() #10
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp eq i32 %12, 4
  %14 = load i32, ptr @user_abort, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %5, label %17, !llvm.loop !28

17:                                               ; preds = %10, %5
  br i1 %2, label %20, label %18

18:                                               ; preds = %17
  tail call void @signals_block() #8
  %19 = load i32, ptr getelementptr inbounds (%struct.file_pair, ptr @io_open_src.pair, i64 0, i32 2), align 8, !tbaa !27
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ %19, %18 ], [ %8, %17 ]
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = tail call ptr @__errno_location() #10
  %25 = load i32, ptr %24, align 4, !tbaa !11
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @io_open_src.pair, align 8, !tbaa !25
  %29 = tail call ptr @strerror(i32 noundef %25) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %28, ptr noundef %29) #8
  br label %30

30:                                               ; preds = %20, %23, %27
  ret i1 %22
}

; Function Attrs: optsize
declare void @signals_unblock() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @spec_mem_open(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @io_open_dest(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @signals_block() #8
  %2 = tail call fastcc zeroext i1 @io_open_dest_real(ptr noundef %0) #9
  tail call void @signals_unblock() #8
  ret i1 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @io_open_dest_real(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !30
  %3 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %4 = tail call i32 @spec_mem_open(ptr noundef %3, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  %5 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 4, !tbaa !31
  %6 = icmp eq i32 %4, -1
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !30
  %9 = tail call ptr @__errno_location() #10
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = tail call ptr @strerror(i32 noundef %10) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef %11) #8
  %12 = load ptr, ptr %2, align 8, !tbaa !30
  tail call void @free(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %7, %1
  ret i1 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @io_close(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  br i1 %1, label %4, label %27

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !32, !range !23, !noundef !24
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 6
  %10 = load i64, ptr %9, align 8, !tbaa !33
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %14 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !31
  %16 = add nsw i64 %10, -1
  %17 = tail call i64 @spec_mem_lseek(ptr noundef %13, i32 noundef 3, i32 noundef %15, i64 noundef %16, i32 noundef 1) #8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = tail call ptr @__errno_location() #10
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = tail call ptr @strerror(i32 noundef %23) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.2, ptr noundef %21, ptr noundef %24) #8
  br label %27

25:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %26 = call fastcc zeroext i1 @io_write_buf(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %27

27:                                               ; preds = %19, %25, %8, %4, %2
  call void @signals_block() #8
  %28 = call fastcc zeroext i1 @io_close_dest(ptr noundef %0) #9
  call fastcc void @io_close_src(ptr noundef %0) #9
  call void @signals_unblock() #8
  ret void
}

; Function Attrs: optsize
declare i64 @spec_mem_lseek(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @io_write_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %5 = icmp ne i64 %2, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %3, %27
  %7 = phi i1 [ %30, %27 ], [ %5, %3 ]
  %8 = phi i64 [ %29, %27 ], [ %2, %3 ]
  %9 = phi ptr [ %28, %27 ], [ %1, %3 ]
  %10 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %11 = load i32, ptr %4, align 4, !tbaa !31
  %12 = tail call i64 @spec_mem_write(ptr noundef %10, i32 noundef 3, i32 noundef %11, ptr noundef %9, i64 noundef %8) #8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %6
  %15 = tail call ptr @__errno_location() #10
  %16 = load i32, ptr %15, align 4, !tbaa !11
  switch i32 %16, label %20 [
    i32 4, label %17
    i32 32, label %31
  ]

17:                                               ; preds = %14
  %18 = load i32, ptr @user_abort, align 4, !tbaa !11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %31, !llvm.loop !34

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = tail call ptr @strerror(i32 noundef %16) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.3, ptr noundef %22, ptr noundef %23) #8
  br label %31

24:                                               ; preds = %6
  %25 = getelementptr inbounds i8, ptr %9, i64 %12
  %26 = sub i64 %8, %12
  br label %27

27:                                               ; preds = %17, %24
  %28 = phi ptr [ %25, %24 ], [ %9, %17 ]
  %29 = phi i64 [ %26, %24 ], [ %8, %17 ]
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %6, label %31

31:                                               ; preds = %27, %14, %17, %3, %20
  %32 = phi i1 [ %7, %20 ], [ %5, %3 ], [ %7, %17 ], [ %7, %14 ], [ %30, %27 ]
  ret i1 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @io_close_dest(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !31
  switch i32 %3, label %4 [
    i32 -1, label %17
    i32 1, label %17
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %6 = tail call i32 @spec_mem_close(ptr noundef %5, i32 noundef 3, i32 noundef %3) #8
  %7 = icmp ne i32 %6, 0
  %8 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  br i1 %7, label %10, label %15

10:                                               ; preds = %4
  %11 = tail call ptr @__errno_location() #10
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = tail call ptr @strerror(i32 noundef %12) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.4, ptr noundef %9, ptr noundef %13) #8
  %14 = load ptr, ptr %8, align 8, !tbaa !30
  br label %15

15:                                               ; preds = %4, %10
  %16 = phi ptr [ %14, %10 ], [ %9, %4 ]
  tail call void @free(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %15, %1, %1
  %18 = phi i1 [ false, %1 ], [ false, %1 ], [ %7, %15 ]
  ret i1 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @io_close_src(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %3 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = tail call i32 @spec_mem_close(ptr noundef %2, i32 noundef 3, i32 noundef %4) #8
  ret void
}

; Function Attrs: optsize
declare i64 @spec_mem_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @spec_mem_close(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @io_read(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %29
  %8 = phi i64 [ %2, %5 ], [ %31, %29 ]
  %9 = phi ptr [ %1, %5 ], [ %30, %29 ]
  %10 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %11 = load i32, ptr %6, align 8, !tbaa !27
  %12 = tail call i64 @spec_mem_read(ptr noundef %10, i32 noundef 3, i32 noundef %11, ptr noundef %9, i64 noundef %8) #8
  switch i64 %12, label %26 [
    i64 0, label %13
    i64 -1, label %15
  ]

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 4
  store i8 1, ptr %14, align 8, !tbaa !35
  br label %33

15:                                               ; preds = %7
  %16 = tail call ptr @__errno_location() #10
  %17 = load i32, ptr %16, align 4, !tbaa !11
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, ptr @user_abort, align 4, !tbaa !11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %36, !llvm.loop !36

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !25
  %24 = tail call ptr @strerror(i32 noundef %17) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.5, ptr noundef %23, ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 4
  store i8 1, ptr %25, align 8, !tbaa !35
  br label %36

26:                                               ; preds = %7
  %27 = getelementptr inbounds i8, ptr %9, i64 %12
  %28 = sub i64 %8, %12
  br label %29

29:                                               ; preds = %19, %26
  %30 = phi ptr [ %27, %26 ], [ %9, %19 ]
  %31 = phi i64 [ %28, %26 ], [ %8, %19 ]
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %7

33:                                               ; preds = %29, %3, %13
  %34 = phi i64 [ %8, %13 ], [ 0, %3 ], [ 0, %29 ]
  %35 = sub i64 %2, %34
  br label %36

36:                                               ; preds = %19, %22, %33
  %37 = phi i64 [ %35, %33 ], [ -1, %22 ], [ -1, %19 ]
  ret i64 %37
}

; Function Attrs: optsize
declare i64 @spec_mem_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @io_pread(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = tail call i64 @spec_mem_lseek(ptr noundef %5, i32 noundef 3, i32 noundef %7, i64 noundef %3, i32 noundef 0) #8
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !25
  %12 = tail call ptr @__errno_location() #10
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = tail call ptr @strerror(i32 noundef %13) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.6, ptr noundef %11, ptr noundef %14) #8
  br label %22

15:                                               ; preds = %4
  %16 = tail call i64 @io_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #9
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = icmp eq i64 %16, %2
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !25
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.7, ptr noundef %21) #8
  br label %22

22:                                               ; preds = %20, %15, %18, %10
  %23 = phi i1 [ true, %10 ], [ true, %20 ], [ true, %15 ], [ false, %18 ]
  ret i1 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @io_write(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !32, !range !23, !noundef !24
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  switch i64 %2, label %14 [
    i64 8192, label %8
    i64 0, label %33
  ]

8:                                                ; preds = %7
  %9 = tail call fastcc zeroext i1 @is_sparse(ptr noundef %1) #9
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 6
  %12 = load i64, ptr %11, align 8, !tbaa !33
  %13 = add i64 %12, 8192
  store i64 %13, ptr %11, align 8, !tbaa !33
  br label %33

14:                                               ; preds = %7, %8
  %15 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !33
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load ptr, ptr @spec_fd, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !31
  %22 = tail call i64 @spec_mem_lseek(ptr noundef %19, i32 noundef 3, i32 noundef %21, i64 noundef %16, i32 noundef 1) #8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = tail call ptr @__errno_location() #10
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = tail call ptr @strerror(i32 noundef %28) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.2, ptr noundef %26, ptr noundef %29) #8
  br label %33

30:                                               ; preds = %18
  store i64 0, ptr %15, align 8, !tbaa !33
  br label %31

31:                                               ; preds = %14, %30, %3
  %32 = tail call fastcc zeroext i1 @io_write_buf(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #9
  br label %33

33:                                               ; preds = %7, %31, %24, %10
  %34 = phi i1 [ false, %10 ], [ true, %24 ], [ %32, %31 ], [ false, %7 ]
  ret i1 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_sparse(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8, !tbaa !37
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1, %8
  %5 = phi i64 [ %6, %8 ], [ 0, %1 ]
  %6 = add nuw nsw i64 %5, 1
  %7 = icmp eq i64 %6, 1024
  br i1 %7, label %12, label %8, !llvm.loop !38

8:                                                ; preds = %4
  %9 = getelementptr inbounds [1024 x i64], ptr %0, i64 0, i64 %6
  %10 = load i64, ptr %9, align 8, !tbaa !37
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %4, label %12, !llvm.loop !38

12:                                               ; preds = %8, %4
  %13 = icmp ugt i64 %5, 1022
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i1 [ false, %1 ], [ %13, %12 ]
  ret i1 %15
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 1, !13, i64 25, i64 1, !13, i64 32, i64 8, !15}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"_Bool", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{i64 0, i64 8, !7, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 1, !13, i64 17, i64 1, !13, i64 24, i64 8, !15}
!18 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 1, !13, i64 9, i64 1, !13, i64 16, i64 8, !15}
!19 = !{i64 0, i64 4, !11, i64 4, i64 1, !13, i64 5, i64 1, !13, i64 12, i64 8, !15}
!20 = !{i64 0, i64 1, !13, i64 1, i64 1, !13, i64 8, i64 8, !15}
!21 = !{i64 0, i64 1, !13, i64 7, i64 8, !15}
!22 = !{i64 0, i64 8, !15}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!26, !8, i64 0}
!26 = !{!"", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !14, i64 24, !14, i64 25, !16, i64 32}
!27 = !{!26, !12, i64 16}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!26, !8, i64 8}
!31 = !{!26, !12, i64 20}
!32 = !{!26, !14, i64 25}
!33 = !{!26, !16, i64 32}
!34 = distinct !{!34, !29}
!35 = !{!26, !14, i64 24}
!36 = distinct !{!36, !29}
!37 = !{!9, !9, i64 0}
!38 = distinct !{!38, !29}
