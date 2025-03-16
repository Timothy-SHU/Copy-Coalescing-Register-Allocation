; ModuleID = 'sfxstdio.c'
source_filename = "sfxstdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@sread_file.p = internal constant %struct.stream_procs { ptr @s_file_available, ptr @s_file_read_seek, ptr @s_std_read_reset, ptr @s_std_read_flush, ptr @s_file_read_close, ptr @s_file_read_process, ptr @s_file_switch }, align 8
@swrite_file.p = internal constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_file_write_seek, ptr @s_std_write_reset, ptr @s_file_write_flush, ptr @s_file_write_close, ptr @s_file_write_process, ptr @s_file_switch }, align 8
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @sread_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @ferror(ptr noundef %1) #6
  %6 = tail call i64 @ftell(ptr noundef %1)
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @fseek(ptr noundef %1, i64 noundef %6, i32 noundef 0)
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 5, i32 1
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 1, %4 ], [ %11, %8 ]
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @clearerr(ptr noundef %1) #6
  br label %16

16:                                               ; preds = %15, %12
  tail call void @s_std_init(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @sread_file.p, i32 noundef %13) #6
  %17 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  store ptr %1, ptr %17, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %19 = load i8, ptr %18, align 1, !tbaa !15
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 23
  store i32 %20, ptr %21, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @s_file_available(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = load ptr, ptr %3, align 8, !tbaa !17
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  store i64 %9, ptr %1, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = tail call i64 @ftell(ptr noundef %16)
  %18 = load ptr, ptr %15, align 8, !tbaa !5
  %19 = tail call i32 @fseek(ptr noundef %18, i64 noundef 0, i32 noundef 2)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !5
  %23 = tail call i64 @ftell(ptr noundef %22)
  %24 = load ptr, ptr %15, align 8, !tbaa !5
  %25 = tail call i32 @fseek(ptr noundef %24, i64 noundef %17, i32 noundef 0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = sub nsw i64 %23, %17
  %29 = load i64, ptr %1, align 8, !tbaa !18
  %30 = add nsw i64 %29, %28
  %31 = icmp eq i64 %30, 0
  %32 = select i1 %31, i64 -1, i64 %30
  br label %40

33:                                               ; preds = %2
  %34 = icmp eq ptr %5, %6
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = tail call i32 @feof(ptr noundef %37) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %27
  %41 = phi i64 [ %32, %27 ], [ -1, %35 ]
  store i64 %41, ptr %1, align 8, !tbaa !18
  br label %42

42:                                               ; preds = %40, %35, %33, %14, %21
  %43 = phi i32 [ -2, %21 ], [ -2, %14 ], [ 0, %33 ], [ 0, %35 ], [ 0, %40 ]
  ret i32 %43
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @s_file_read_seek(ptr nocapture noundef %0, i64 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  %8 = load i64, ptr %7, align 8, !tbaa !20
  %9 = sub nsw i64 %1, %8
  %10 = icmp sgt i64 %9, -1
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !tbaa !17
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %6 to i64
  %15 = sub i64 %13, %14
  %16 = add i64 %15, 1
  %17 = and i64 %16, 4294967295
  %18 = icmp sgt i64 %9, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds i8, ptr %6, i64 %9
  %21 = getelementptr inbounds i8, ptr %20, i64 -1
  store ptr %21, ptr %3, align 8, !tbaa !17
  br label %31

22:                                               ; preds = %11, %2
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = tail call i32 @fseek(ptr noundef %24, i64 noundef %1, i32 noundef 0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load ptr, ptr %5, align 8, !tbaa !19
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  store ptr %29, ptr %4, align 8, !tbaa !17
  store ptr %29, ptr %3, align 8, !tbaa !17
  %30 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 0, ptr %30, align 8, !tbaa !21
  store i64 %1, ptr %7, align 8, !tbaa !20
  br label %31

31:                                               ; preds = %22, %27, %19
  %32 = phi i32 [ 0, %19 ], [ 0, %27 ], [ -2, %22 ]
  ret i32 %32
}

declare void @s_std_read_reset(ptr noundef) #2

declare i32 @s_std_read_flush(ptr noundef) #2

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @s_file_read_close(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !5
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @s_file_read_process(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %8 to i64
  %14 = sub i64 %12, %13
  %15 = and i64 %14, 4294967295
  %16 = tail call i64 @fread(ptr noundef nonnull %9, i64 noundef 1, i64 noundef %15, ptr noundef %6)
  %17 = trunc i64 %16 to i32
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = load ptr, ptr %7, align 8, !tbaa !22
  %20 = zext nneg i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %21, ptr %7, align 8, !tbaa !22
  %22 = tail call i32 @ferror(ptr noundef %6) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = tail call i32 @feof(ptr noundef %6) #6
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1, i32 -1
  br label %28

28:                                               ; preds = %4, %24
  %29 = phi i32 [ %27, %24 ], [ -2, %4 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_file_switch(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = and i32 %4, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @stell(ptr noundef %0) #6
  %13 = tail call i32 @fseek(ptr noundef %6, i64 noundef %12, i32 noundef 0)
  %14 = and i32 %4, 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = load ptr, ptr @stdout, align 8, !tbaa !26
  %21 = icmp eq ptr %20, %6
  %22 = select i1 %21, i32 2, i32 6
  tail call void @s_std_init(ptr noundef %0, ptr noundef %17, i32 noundef %19, ptr noundef nonnull @swrite_file.p, i32 noundef %22) #6
  store ptr %6, ptr %5, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = zext i8 %24 to i32
  store i32 %25, ptr %3, align 8, !tbaa !16
  br i1 %15, label %29, label %26

26:                                               ; preds = %11
  store i8 10, ptr %23, align 1, !tbaa !15
  store i32 10, ptr %3, align 8, !tbaa !16
  %27 = tail call i32 @fseek(ptr noundef %6, i64 noundef 0, i32 noundef 2)
  %28 = tail call i64 @ftell(ptr noundef %6)
  br label %29

29:                                               ; preds = %11, %26
  %30 = phi i64 [ %28, %26 ], [ %12, %11 ]
  %31 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  store i64 %30, ptr %31, align 8, !tbaa !20
  %32 = trunc i32 %4 to i8
  %33 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  store i8 %32, ptr %33, align 1, !tbaa !15
  br label %68

34:                                               ; preds = %2
  %35 = and i32 %4, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @stell(ptr noundef %0) #6
  %39 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !27
  %41 = tail call i32 %40(ptr noundef %0) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %37
  %44 = tail call i32 @fseek(ptr noundef %6, i64 noundef 0, i32 noundef 1)
  %45 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !25
  %49 = tail call i32 @ferror(ptr noundef %6) #6
  %50 = tail call i64 @ftell(ptr noundef %6)
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = tail call i32 @fseek(ptr noundef %6, i64 noundef %50, i32 noundef 0)
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 5, i32 1
  br label %56

56:                                               ; preds = %52, %43
  %57 = phi i32 [ 1, %43 ], [ %55, %52 ]
  %58 = icmp eq i32 %49, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @clearerr(ptr noundef %6) #6
  br label %60

60:                                               ; preds = %56, %59
  tail call void @s_std_init(ptr noundef %0, ptr noundef %46, i32 noundef %48, ptr noundef nonnull @sread_file.p, i32 noundef %57) #6
  store ptr %6, ptr %5, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !15
  %63 = zext i8 %62 to i32
  store i32 %63, ptr %3, align 8, !tbaa !16
  %64 = trunc i32 %4 to i8
  %65 = and i8 %64, 8
  %66 = or i8 %62, %65
  store i8 %66, ptr %61, align 1, !tbaa !15
  %67 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  store i64 %38, ptr %67, align 8, !tbaa !20
  br label %68

68:                                               ; preds = %60, %29
  store i32 %4, ptr %3, align 8, !tbaa !16
  br label %69

69:                                               ; preds = %37, %34, %8, %68
  %70 = phi i32 [ 0, %68 ], [ -2, %8 ], [ -2, %34 ], [ -2, %37 ]
  ret i32 %70
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @clearerr(ptr nocapture noundef) local_unnamed_addr #4

declare void @s_std_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @swrite_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stdout, align 8, !tbaa !26
  %6 = icmp eq ptr %5, %1
  %7 = select i1 %6, i32 2, i32 6
  tail call void @s_std_init(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @swrite_file.p, i32 noundef %7) #6
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  store ptr %1, ptr %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 23
  store i32 %11, ptr %12, align 8, !tbaa !16
  ret void
}

declare i32 @s_std_noavailable(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_file_write_seek(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = tail call i32 %4(ptr noundef %0) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i32 @fseek(ptr noundef %9, i64 noundef %1, i32 noundef 0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  store i64 %1, ptr %13, align 8, !tbaa !20
  br label %14

14:                                               ; preds = %7, %2, %12
  %15 = phi i32 [ 0, %12 ], [ %5, %2 ], [ -2, %7 ]
  ret i32 %15
}

declare void @s_std_write_reset(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_file_write_flush(ptr noundef %0) #0 {
  %2 = tail call i32 @s_process_write_buf(ptr noundef %0, i32 noundef 0) #6
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call i32 @fflush(ptr noundef %4)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_file_write_close(ptr noundef %0) #0 {
  %2 = tail call i32 @s_process_write_buf(ptr noundef %0, i32 noundef 1) #6
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  store ptr null, ptr %3, align 8, !tbaa !5
  %7 = tail call i32 @fclose(ptr noundef nonnull %4)
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @s_file_write_process(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = load ptr, ptr %1, align 8, !tbaa !30
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %7, i64 1
  %17 = tail call i64 @fwrite(ptr noundef nonnull %16, i64 noundef 1, i64 noundef %11, ptr noundef %15)
  %18 = trunc i64 %17 to i32
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  %20 = load ptr, ptr %1, align 8, !tbaa !30
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  store ptr %22, ptr %1, align 8, !tbaa !30
  %23 = tail call i32 @ferror(ptr noundef %15) #6
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 -2
  br label %26

26:                                               ; preds = %4, %13
  %27 = phi i32 [ %25, %13 ], [ 0, %4 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @sappend_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stdout, align 8, !tbaa !26
  %6 = icmp eq ptr %5, %1
  %7 = select i1 %6, i32 2, i32 6
  tail call void @s_std_init(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @swrite_file.p, i32 noundef %7) #6
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  store ptr %1, ptr %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 23
  store i32 %11, ptr %12, align 8, !tbaa !16
  store i8 10, ptr %9, align 1, !tbaa !15
  store i32 10, ptr %12, align 8, !tbaa !16
  %13 = tail call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %14 = tail call i64 @ftell(ptr noundef %1)
  %15 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  store i64 %14, ptr %15, align 8, !tbaa !20
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

declare i32 @s_process_write_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i64 @stell(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 208}
!6 = !{!"stream_s", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !7, i64 48, !10, i64 56, !10, i64 60, !11, i64 64, !8, i64 66, !8, i64 67, !12, i64 72, !13, i64 88, !14, i64 96, !7, i64 152, !10, i64 160, !10, i64 164, !7, i64 168, !11, i64 176, !11, i64 178, !7, i64 184, !7, i64 192, !10, i64 200, !7, i64 208, !10, i64 216, !7, i64 224}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!"gs_string_s", !7, i64 0, !10, i64 8}
!13 = !{!"long", !8, i64 0}
!14 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!15 = !{!6, !8, i64 67}
!16 = !{!6, !10, i64 216}
!17 = !{!8, !8, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!6, !7, i64 48}
!20 = !{!6, !13, i64 88}
!21 = !{!6, !11, i64 64}
!22 = !{!23, !7, i64 8}
!23 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!24 = !{!23, !7, i64 16}
!25 = !{!6, !10, i64 60}
!26 = !{!7, !7, i64 0}
!27 = !{!6, !7, i64 120}
!28 = !{!29, !7, i64 8}
!29 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!30 = !{!29, !7, i64 0}
