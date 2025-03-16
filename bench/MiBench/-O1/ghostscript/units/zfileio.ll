; ModuleID = 'zfileio.c'
source_filename = "zfileio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@zfileio_op_defs.op_defs_ = internal constant [24 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zbytesavailable }, %struct.op_def { ptr @.str.1, ptr @zclosefile }, %struct.op_def { ptr @.str.2, ptr @zecho }, %struct.op_def { ptr @.str.3, ptr @zfileposition }, %struct.op_def { ptr @.str.4, ptr @zflush }, %struct.op_def { ptr @.str.5, ptr @zflushfile }, %struct.op_def { ptr @.str.6, ptr @zprint }, %struct.op_def { ptr @.str.7, ptr @zread }, %struct.op_def { ptr @.str.8, ptr @zreadhexstring }, %struct.op_def { ptr @.str.9, ptr @zreadline }, %struct.op_def { ptr @.str.10, ptr @zreadstring }, %struct.op_def { ptr @.str.11, ptr @zresetfile }, %struct.op_def { ptr @.str.12, ptr @zsetfileposition }, %struct.op_def { ptr @.str.13, ptr @zunread }, %struct.op_def { ptr @.str.14, ptr @zwrite }, %struct.op_def { ptr @.str.15, ptr @zwritecvp }, %struct.op_def { ptr @.str.16, ptr @zwritehexstring }, %struct.op_def { ptr @.str.17, ptr @zwritestring }, %struct.op_def { ptr @.str.18, ptr @zreadhexstring_continue }, %struct.op_def { ptr @.str.19, ptr @zwritehexstring_continue }, %struct.op_def { ptr @.str.20, ptr @zreadstring_continue }, %struct.op_def { ptr @.str.21, ptr @zreadline_continue }, %struct.op_def { ptr @.str.22, ptr @zwritecvp_continue }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"1bytesavailable\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"1closefile\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1echo\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"1fileposition\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"0flush\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"1flushfile\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"1print\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1read\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"2readhexstring\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"2readline\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"2readstring\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"1resetfile\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"2setfileposition\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"2unread\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"2write\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"3.writecvp\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"2writehexstring\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"2writestring\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"3%zreadhexstring_continue\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"3%zwritehexstring_continue\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"3%zreadstring_continue\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"3%zreadline_continue\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"4%zwritecvp_continue\00", align 1
@invalid_file_entry = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zclosefile(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 18
  %13 = load i16, ptr %12, align 2, !tbaa !16
  %14 = or i16 %13, %11
  %15 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !17
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %7
  %19 = tail call i32 @sclose(ptr noundef %9) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !20
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = and i32 %19, -2
  %28 = icmp eq i32 %27, -4
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = tail call i32 @s_handle_write_exception(i32 noundef %19, ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zclosefile) #6
  br label %35

31:                                               ; preds = %21
  switch i32 %19, label %35 [
    i32 -1, label %32
    i32 -3, label %33
    i32 -4, label %33
  ]

32:                                               ; preds = %31
  br label %35

33:                                               ; preds = %31, %31
  %34 = tail call i32 @s_handle_read_exception(i32 noundef %19, ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zclosefile) #6
  br label %35

35:                                               ; preds = %33, %32, %31, %29, %26, %18
  %36 = phi i32 [ undef, %18 ], [ %30, %29 ], [ -12, %26 ], [ %34, %33 ], [ 1, %32 ], [ -12, %31 ]
  br i1 %20, label %37, label %40

37:                                               ; preds = %35, %7
  %38 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.ref_s, ptr %38, i64 -1
  store ptr %39, ptr @o_stack, align 8, !tbaa !21
  br label %40

40:                                               ; preds = %35, %37, %5
  %41 = phi i32 [ 0, %37 ], [ %36, %35 ], [ %6, %5 ]
  ret i32 %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @sclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zwrite(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %2, align 8, !tbaa !23
  %4 = and i16 %3, 16144
  %5 = icmp eq i16 %4, 784
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 -15
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %71, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %71

12:                                               ; preds = %1
  %13 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !17
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %12
  %21 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 17
  %24 = load i16, ptr %23, align 8, !tbaa !8
  %25 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !17
  %27 = icmp eq i16 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 22
  %30 = load ptr, ptr %29, align 8, !tbaa !24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @sswitch(ptr noundef %22, i32 noundef 1) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i16, ptr %23, align 8, !tbaa !8
  %37 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 18
  store i16 %36, ptr %37, align 2, !tbaa !16
  store i16 0, ptr %23, align 8, !tbaa !8
  br label %38

38:                                               ; preds = %20, %28, %32, %35
  %39 = phi i1 [ true, %35 ], [ false, %28 ], [ false, %20 ], [ false, %32 ]
  %40 = phi i32 [ 0, %35 ], [ -7, %28 ], [ -7, %20 ], [ -12, %32 ]
  br i1 %39, label %41, label %71

41:                                               ; preds = %38, %12
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = icmp eq i8 %43, 11
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %71

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !5
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 3, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 3, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp ult ptr %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %57, ptr %51, align 8, !tbaa !5
  store i8 %50, ptr %57, align 1, !tbaa !5
  br label %60

58:                                               ; preds = %47
  %59 = tail call i32 @spputc(ptr noundef %14, i8 noundef zeroext %50) #6
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ 0, %56 ], [ %59, %58 ]
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %65 = getelementptr inbounds %struct.ref_s, ptr %64, i64 -2
  store ptr %65, ptr @o_stack, align 8, !tbaa !21
  br label %71

66:                                               ; preds = %60
  %67 = and i32 %61, -2
  %68 = icmp eq i32 %67, -4
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = tail call i32 @s_handle_write_exception(i32 noundef %61, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zwrite) #6
  br label %71

71:                                               ; preds = %69, %66, %10, %6, %38, %63, %45
  %72 = phi i32 [ 0, %63 ], [ %46, %45 ], [ %40, %38 ], [ %11, %10 ], [ -7, %6 ], [ %70, %69 ], [ -12, %66 ]
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @file_switch_to_write(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 17
  %5 = load i16, ptr %4, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !17
  %8 = icmp eq i16 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @sswitch(ptr noundef %3, i32 noundef 1) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr %4, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 18
  store i16 %17, ptr %18, align 2, !tbaa !16
  store i16 0, ptr %4, align 8, !tbaa !8
  br label %19

19:                                               ; preds = %13, %1, %9, %16
  %20 = phi i32 [ 0, %16 ], [ -7, %9 ], [ -7, %1 ], [ -12, %13 ]
  ret i32 %20
}

declare i32 @spputc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zreadline_from(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = load i32, ptr %4, align 4, !tbaa !25
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4, !tbaa !25
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  br label %26

12:                                               ; preds = %58
  %13 = load i32, ptr %4, align 4, !tbaa !25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %12, %5
  %16 = tail call i32 @spgetcc(ptr noundef %0, i32 noundef 0) #6
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %63, label %18

18:                                               ; preds = %15
  %19 = icmp slt i32 %16, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %18
  %21 = icmp eq i32 %16, 10
  br i1 %21, label %63, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  store ptr %25, ptr %23, align 8, !tbaa !5
  br label %63

26:                                               ; preds = %62, %8
  %27 = phi i32 [ %9, %8 ], [ %59, %62 ]
  %28 = phi i32 [ undef, %8 ], [ %61, %62 ]
  %29 = load ptr, ptr %11, align 8, !tbaa !5
  %30 = load ptr, ptr %10, align 8, !tbaa !5
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = icmp sgt i64 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %36, ptr %10, align 8, !tbaa !5
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = zext i8 %37 to i32
  br label %41

39:                                               ; preds = %26
  %40 = tail call i32 @spgetcc(ptr noundef %0, i32 noundef 1) #6
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %38, %35 ], [ %40, %39 ]
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 %27, ptr %3, align 4, !tbaa !25
  br label %58

45:                                               ; preds = %41
  switch i32 %42, label %48 [
    i32 13, label %46
    i32 10, label %47
  ]

46:                                               ; preds = %45
  store i32 %27, ptr %3, align 4, !tbaa !25
  store i32 1, ptr %4, align 4, !tbaa !25
  br label %58

47:                                               ; preds = %45
  store i32 %27, ptr %3, align 4, !tbaa !25
  br label %58

48:                                               ; preds = %45
  %49 = icmp ult i32 %27, %2
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %10, align 8, !tbaa !5
  %52 = getelementptr inbounds i8, ptr %51, i64 -1
  store ptr %52, ptr %10, align 8, !tbaa !5
  store i32 %27, ptr %3, align 4, !tbaa !25
  br label %58

53:                                               ; preds = %48
  %54 = trunc i32 %42 to i8
  %55 = add nuw i32 %27, 1
  %56 = zext i32 %27 to i64
  %57 = getelementptr inbounds i8, ptr %1, i64 %56
  store i8 %54, ptr %57, align 1, !tbaa !5
  br label %58

58:                                               ; preds = %53, %50, %47, %46, %44
  %59 = phi i32 [ %27, %44 ], [ %27, %50 ], [ %55, %53 ], [ %27, %47 ], [ %27, %46 ]
  %60 = phi i32 [ 1, %44 ], [ 1, %50 ], [ 0, %53 ], [ 1, %47 ], [ 2, %46 ]
  %61 = phi i32 [ %42, %44 ], [ 1, %50 ], [ %28, %53 ], [ 0, %47 ], [ %28, %46 ]
  switch i32 %60, label %64 [
    i32 0, label %62
    i32 2, label %12
  ]

62:                                               ; preds = %58, %12
  br label %26, !llvm.loop !26

63:                                               ; preds = %20, %22, %15
  store i32 0, ptr %4, align 4, !tbaa !25
  br label %64

64:                                               ; preds = %58, %63, %18
  %65 = phi i32 [ %16, %18 ], [ 0, %63 ], [ %61, %58 ]
  ret i32 %65
}

declare i32 @spgetcc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zflush(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = call i32 @zget_stdout(ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 12, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = call i32 %8(ptr noundef %6) #6
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ 0, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %11
}

declare i32 @zget_stdout(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfileio_op_defs() local_unnamed_addr #3 {
  ret ptr @zfileio_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbytesavailable(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = load i16, ptr %0, align 8, !tbaa !23
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 800
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %46

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 17
  %16 = load i16, ptr %15, align 8, !tbaa !8
  %17 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !17
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %12
  %21 = icmp eq i16 %16, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !16
  %25 = icmp eq i16 %24, %18
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 22
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @sswitch(ptr noundef %14, i32 noundef 0) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i16, ptr %23, align 2, !tbaa !16
  store i16 %34, ptr %15, align 8, !tbaa !8
  store i16 0, ptr %23, align 2, !tbaa !16
  br label %35

35:                                               ; preds = %26, %30, %33
  %36 = phi i1 [ true, %33 ], [ false, %26 ], [ false, %30 ]
  %37 = phi i32 [ 0, %33 ], [ -7, %26 ], [ -12, %30 ]
  br i1 %36, label %40, label %46

38:                                               ; preds = %20, %22
  %39 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !28
  br label %40

40:                                               ; preds = %38, %35, %12
  %41 = phi ptr [ %14, %35 ], [ %39, %38 ], [ %14, %12 ]
  %42 = call i32 @savailable(ptr noundef %41, ptr noundef nonnull %2) #6
  switch i32 %42, label %46 [
    i32 -1, label %43
    i32 0, label %44
  ]

43:                                               ; preds = %40
  store i64 -1, ptr %2, align 8, !tbaa !30
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i64, ptr %2, align 8, !tbaa !30
  store i64 %45, ptr %13, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !23
  br label %46

46:                                               ; preds = %40, %10, %6, %35, %44
  %47 = phi i32 [ 0, %44 ], [ %37, %35 ], [ %11, %10 ], [ -7, %6 ], [ -12, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @zecho(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 -1
  store ptr %9, ptr @o_stack, align 8, !tbaa !21
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zfileposition(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 18
  %13 = load i16, ptr %12, align 2, !tbaa !16
  %14 = or i16 %13, %11
  %15 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !17
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = tail call i64 @stell(ptr noundef %9) #6
  store i64 %19, ptr %8, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !23
  br label %20

20:                                               ; preds = %7, %18, %5
  %21 = phi i32 [ 0, %18 ], [ %6, %5 ], [ -7, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zflushfile(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 18
  %13 = load i16, ptr %12, align 2, !tbaa !16
  %14 = or i16 %13, %11
  %15 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !17
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 12, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = tail call i32 %20(ptr noundef %9) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  store ptr %25, ptr @o_stack, align 8, !tbaa !21
  br label %40

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 9
  %28 = load i8, ptr %27, align 1, !tbaa !20
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = and i32 %21, -2
  %33 = icmp eq i32 %32, -4
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = tail call i32 @s_handle_write_exception(i32 noundef %21, ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zflushfile) #6
  br label %40

36:                                               ; preds = %26
  switch i32 %21, label %40 [
    i32 -1, label %37
    i32 -3, label %38
    i32 -4, label %38
  ]

37:                                               ; preds = %36
  br label %40

38:                                               ; preds = %36, %36
  %39 = tail call i32 @s_handle_read_exception(i32 noundef %21, ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zflushfile) #6
  br label %40

40:                                               ; preds = %38, %37, %36, %34, %31, %7, %23, %5
  %41 = phi i32 [ 0, %23 ], [ %6, %5 ], [ -7, %7 ], [ %35, %34 ], [ -12, %31 ], [ %39, %38 ], [ 1, %37 ], [ -12, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @zprint(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %5 = load i16, ptr %0, align 8, !tbaa !23
  %6 = and i16 %5, 16160
  %7 = icmp eq i16 %6, 4640
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 18
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %51

14:                                               ; preds = %1
  %15 = call i32 @zget_stdout(ptr noundef nonnull %3) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !17
  %23 = zext i16 %22 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %24 = call i32 @sputs(ptr noundef %18, ptr noundef %20, i32 noundef %23, ptr noundef nonnull %2) #6
  %25 = and i32 %24, -2
  %26 = icmp eq i32 %25, -4
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load i32, ptr %2, align 4, !tbaa !25
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %20, i64 %29
  store ptr %30, ptr %19, align 8, !tbaa !5
  %31 = trunc i32 %28 to i16
  %32 = sub i16 %22, %31
  store i16 %32, ptr %21, align 2, !tbaa !17
  br label %33

33:                                               ; preds = %17, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %34 = icmp sgt i32 %24, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -1
  store ptr %37, ptr @o_stack, align 8, !tbaa !21
  br label %51

38:                                               ; preds = %33
  %39 = load ptr, ptr %3, align 8, !tbaa !28
  call void @make_stream_file(ptr noundef nonnull %4, ptr noundef %39, ptr noundef nonnull @.str.23) #6
  br i1 %26, label %40, label %42

40:                                               ; preds = %38
  %41 = call i32 @s_handle_write_exception(i32 noundef %24, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zwritestring) #6
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i32 [ %41, %40 ], [ -12, %38 ]
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %47 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !31
  %48 = icmp ugt ptr %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !32
  br label %51

50:                                               ; preds = %45
  store ptr %46, ptr @o_stack, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !33
  br label %51

51:                                               ; preds = %42, %14, %12, %8, %50, %49, %35
  %52 = phi i32 [ 0, %35 ], [ -16, %49 ], [ 5, %50 ], [ %13, %12 ], [ -7, %8 ], [ %15, %14 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @zread(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !23
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 800
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %70, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %70

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.stream_s, ptr %13, i64 0, i32 17
  %15 = load i16, ptr %14, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !17
  %18 = icmp eq i16 %15, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %11
  %20 = icmp eq i16 %15, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.stream_s, ptr %13, i64 0, i32 18
  %23 = load i16, ptr %22, align 2, !tbaa !16
  %24 = icmp eq i16 %23, %17
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.stream_s, ptr %13, i64 0, i32 22
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @sswitch(ptr noundef %13, i32 noundef 0) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i16, ptr %22, align 2, !tbaa !16
  store i16 %33, ptr %14, align 8, !tbaa !8
  store i16 0, ptr %22, align 2, !tbaa !16
  br label %34

34:                                               ; preds = %25, %29, %32
  %35 = phi i1 [ true, %32 ], [ false, %25 ], [ false, %29 ]
  %36 = phi i32 [ 0, %32 ], [ -7, %25 ], [ -12, %29 ]
  br i1 %35, label %39, label %70

37:                                               ; preds = %19, %21
  %38 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !28
  br label %39

39:                                               ; preds = %37, %34, %11
  %40 = phi ptr [ %13, %34 ], [ %38, %37 ], [ %13, %11 ]
  %41 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 3
  %42 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 3, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = load ptr, ptr %41, align 8, !tbaa !5
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = icmp sgt i64 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %50, ptr %41, align 8, !tbaa !5
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = zext i8 %51 to i32
  br label %55

53:                                               ; preds = %39
  %54 = tail call i32 @spgetcc(ptr noundef %40, i32 noundef 1) #6
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %52, %49 ], [ %54, %53 ]
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %60 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !31
  %61 = icmp ugt ptr %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !32
  br label %70

63:                                               ; preds = %58
  store ptr %59, ptr @o_stack, align 8, !tbaa !21
  %64 = zext nneg i32 %56 to i64
  store i64 %64, ptr %12, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !23
  %65 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 1, ptr %65, align 8, !tbaa !5
  store i16 256, ptr %59, align 8, !tbaa !23
  br label %70

66:                                               ; preds = %55
  switch i32 %56, label %70 [
    i32 -1, label %67
    i32 -4, label %68
    i32 -3, label %68
  ]

67:                                               ; preds = %66
  store i16 0, ptr %12, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !23
  br label %70

68:                                               ; preds = %66, %66
  %69 = tail call i32 @s_handle_read_exception(i32 noundef %56, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zread) #6
  br label %70

70:                                               ; preds = %68, %66, %63, %67, %9, %5, %34, %62
  %71 = phi i32 [ -16, %62 ], [ %36, %34 ], [ %10, %9 ], [ -7, %5 ], [ 0, %67 ], [ 0, %63 ], [ %69, %68 ], [ -12, %66 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadhexstring(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !23
  %3 = and i16 %2, 16144
  %4 = icmp eq i16 %3, 4624
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !17
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  store i8 16, ptr %17, align 1, !tbaa !5
  br label %18

18:                                               ; preds = %15, %11
  %19 = tail call fastcc i32 @zreadhexstring_at(ptr noundef nonnull %0, i32 noundef 0)
  br label %20

20:                                               ; preds = %9, %5, %18
  %21 = phi i32 [ %19, %18 ], [ %10, %9 ], [ -7, %5 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadline(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @zreadline_at(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadstring(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @zreadstring_at(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zresetfile(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 18
  %13 = load i16, ptr %12, align 2, !tbaa !16
  %14 = or i16 %13, %11
  %15 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !17
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 12, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  tail call void %20(ptr noundef %9) #6
  br label %21

21:                                               ; preds = %18, %7
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -1
  store ptr %23, ptr @o_stack, align 8, !tbaa !21
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi i32 [ 0, %21 ], [ %6, %5 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetfileposition(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -15
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 3
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %6) #6
  br label %33

8:                                                ; preds = %1
  %9 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 17
  %12 = load i16, ptr %11, align 8, !tbaa !8
  %13 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 18
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = or i16 %14, %12
  %16 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !17
  %18 = icmp eq i16 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %8
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 11
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !5
  %28 = tail call i32 @spseek(ptr noundef %10, i64 noundef %27) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 -2
  store ptr %32, ptr @o_stack, align 8, !tbaa !21
  br label %33

33:                                               ; preds = %25, %8, %30, %23, %5
  %34 = phi i32 [ 0, %30 ], [ %24, %23 ], [ %7, %5 ], [ -7, %8 ], [ -12, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @zunread(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %2, align 8, !tbaa !23
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 800
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 -15
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %67, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %67

12:                                               ; preds = %1
  %13 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 17
  %16 = load i16, ptr %15, align 8, !tbaa !8
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !17
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %49, label %20

20:                                               ; preds = %12
  %21 = icmp eq i16 %16, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.stream_s, ptr %14, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !16
  %25 = icmp eq i16 %24, %18
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.stream_s, ptr %28, i64 0, i32 18
  %30 = load i16, ptr %29, align 2, !tbaa !16
  %31 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !17
  %33 = icmp eq i16 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.stream_s, ptr %28, i64 0, i32 22
  %36 = load ptr, ptr %35, align 8, !tbaa !24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @sswitch(ptr noundef %28, i32 noundef 0) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i16, ptr %29, align 2, !tbaa !16
  %43 = getelementptr inbounds %struct.stream_s, ptr %28, i64 0, i32 17
  store i16 %42, ptr %43, align 8, !tbaa !8
  store i16 0, ptr %29, align 2, !tbaa !16
  br label %44

44:                                               ; preds = %26, %34, %38, %41
  %45 = phi i1 [ true, %41 ], [ false, %34 ], [ false, %26 ], [ false, %38 ]
  %46 = phi i32 [ 0, %41 ], [ -7, %34 ], [ -7, %26 ], [ -12, %38 ]
  br i1 %45, label %49, label %67

47:                                               ; preds = %20, %22
  %48 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !28
  br label %49

49:                                               ; preds = %47, %44, %12
  %50 = phi ptr [ %14, %44 ], [ %48, %47 ], [ %14, %12 ]
  %51 = getelementptr inbounds i8, ptr %0, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = icmp eq i8 %52, 11
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %67

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !5
  %59 = icmp ugt i64 %58, 255
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = trunc i64 %58 to i8
  %62 = tail call i32 @sungetc(ptr noundef %50, i8 noundef zeroext %61) #6
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %66 = getelementptr inbounds %struct.ref_s, ptr %65, i64 -2
  store ptr %66, ptr @o_stack, align 8, !tbaa !21
  br label %67

67:                                               ; preds = %60, %56, %10, %6, %44, %64, %54
  %68 = phi i32 [ 0, %64 ], [ %55, %54 ], [ %46, %44 ], [ %11, %10 ], [ -7, %6 ], [ -15, %56 ], [ -12, %60 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritecvp(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @zwritecvp_at(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritehexstring(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @zwritehexstring_at(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritestring(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %4 = load i16, ptr %3, align 8, !tbaa !23
  %5 = and i16 %4, 16144
  %6 = icmp eq i16 %5, 784
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 -15
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %75, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #6
  br label %75

13:                                               ; preds = %1
  %14 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.stream_s, ptr %15, i64 0, i32 18
  %17 = load i16, ptr %16, align 2, !tbaa !16
  %18 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !17
  %20 = icmp eq i16 %17, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %13
  %22 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.stream_s, ptr %23, i64 0, i32 17
  %25 = load i16, ptr %24, align 8, !tbaa !8
  %26 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !17
  %28 = icmp eq i16 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.stream_s, ptr %23, i64 0, i32 22
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @sswitch(ptr noundef %23, i32 noundef 1) #6
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %24, align 8, !tbaa !8
  %38 = getelementptr inbounds %struct.stream_s, ptr %23, i64 0, i32 18
  store i16 %37, ptr %38, align 2, !tbaa !16
  store i16 0, ptr %24, align 8, !tbaa !8
  br label %39

39:                                               ; preds = %21, %29, %33, %36
  %40 = phi i1 [ true, %36 ], [ false, %29 ], [ false, %21 ], [ false, %33 ]
  %41 = phi i32 [ 0, %36 ], [ -7, %29 ], [ -7, %21 ], [ -12, %33 ]
  br i1 %40, label %42, label %75

42:                                               ; preds = %39, %13
  %43 = load i16, ptr %0, align 8, !tbaa !23
  %44 = and i16 %43, 16160
  %45 = icmp eq i16 %44, 4640
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %0, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !5
  %49 = icmp eq i8 %48, 18
  br i1 %49, label %75, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %75

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !17
  %57 = zext i16 %56 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %58 = call i32 @sputs(ptr noundef %15, ptr noundef %54, i32 noundef %57, ptr noundef nonnull %2) #6
  %59 = and i32 %58, -2
  %60 = icmp eq i32 %59, -4
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, ptr %2, align 4, !tbaa !25
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %54, i64 %63
  store ptr %64, ptr %53, align 8, !tbaa !5
  %65 = trunc i32 %62 to i16
  %66 = sub i16 %56, %65
  store i16 %66, ptr %55, align 2, !tbaa !17
  br label %67

67:                                               ; preds = %52, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %68 = icmp sgt i32 %58, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %71 = getelementptr inbounds %struct.ref_s, ptr %70, i64 -2
  store ptr %71, ptr @o_stack, align 8, !tbaa !21
  br label %75

72:                                               ; preds = %67
  br i1 %60, label %73, label %75

73:                                               ; preds = %72
  %74 = call i32 @s_handle_write_exception(i32 noundef %58, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zwritestring) #6
  br label %75

75:                                               ; preds = %73, %72, %50, %46, %11, %7, %39, %69
  %76 = phi i32 [ 0, %69 ], [ %41, %39 ], [ %12, %11 ], [ -7, %7 ], [ %51, %50 ], [ -7, %46 ], [ %74, %73 ], [ -12, %72 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadhexstring_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %34

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %13 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !17
  %15 = zext i16 %14 to i64
  %16 = icmp sgt i64 %9, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = load i16, ptr %12, align 8, !tbaa !23
  %19 = and i16 %18, 16144
  %20 = icmp eq i16 %19, 4624
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %0, i64 -15
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 18
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @check_type_failed(ptr noundef nonnull %12) #6
  br label %34

27:                                               ; preds = %17
  %28 = trunc i64 %9 to i32
  %29 = tail call fastcc i32 @zreadhexstring_at(ptr noundef nonnull %12, i32 noundef %28)
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.ref_s, ptr %32, i64 -1
  store ptr %33, ptr @o_stack, align 8, !tbaa !21
  br label %34

34:                                               ; preds = %27, %31, %25, %21, %7, %11, %5
  %35 = phi i32 [ %6, %5 ], [ -15, %11 ], [ -15, %7 ], [ %26, %25 ], [ -7, %21 ], [ %29, %31 ], [ %29, %27 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritehexstring_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp ult i64 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %13 = trunc i64 %9 to i32
  %14 = tail call fastcc i32 @zwritehexstring_at(ptr noundef nonnull %12, i32 noundef %13)
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -1
  store ptr %18, ptr @o_stack, align 8, !tbaa !21
  br label %19

19:                                               ; preds = %11, %16, %7, %5
  %20 = phi i32 [ %6, %5 ], [ -15, %7 ], [ %14, %16 ], [ %14, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadstring_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !17
  %14 = zext i16 %13 to i64
  %15 = icmp sgt i64 %9, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %18 = trunc i64 %9 to i32
  %19 = tail call fastcc i32 @zreadstring_at(ptr noundef nonnull %17, i32 noundef %18)
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -1
  store ptr %23, ptr @o_stack, align 8, !tbaa !21
  br label %24

24:                                               ; preds = %16, %21, %7, %11, %5
  %25 = phi i32 [ %6, %5 ], [ -15, %11 ], [ -15, %7 ], [ %19, %21 ], [ %19, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zreadline_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !17
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 11
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %31

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !5
  %14 = icmp slt i64 %13, 0
  %15 = zext i16 %4 to i64
  %16 = icmp sgt i64 %13, %15
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %11
  %19 = trunc i64 %13 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @zreadline_at(ptr noundef nonnull %2, i32 noundef %5, i32 noundef 1)
  br label %25

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @zreadline_at(ptr noundef nonnull %2, i32 noundef %19, i32 noundef 0)
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.ref_s, ptr %29, i64 -1
  store ptr %30, ptr @o_stack, align 8, !tbaa !21
  br label %31

31:                                               ; preds = %25, %28, %11, %9
  %32 = phi i32 [ %10, %9 ], [ -15, %11 ], [ %26, %28 ], [ %26, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @zwritecvp_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp ult i64 %9, 4294967296
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = trunc i64 %9 to i32
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %14 = tail call fastcc i32 @zwritecvp_at(ptr noundef nonnull %13, i32 noundef %12)
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -1
  store ptr %18, ptr @o_stack, align 8, !tbaa !21
  br label %19

19:                                               ; preds = %11, %16, %7, %5
  %20 = phi i32 [ %6, %5 ], [ -15, %7 ], [ %14, %16 ], [ %14, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @file_switch_to_read(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !17
  %8 = icmp eq i16 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @sswitch(ptr noundef %3, i32 noundef 0) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr %4, align 2, !tbaa !16
  %18 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 17
  store i16 %17, ptr %18, align 8, !tbaa !8
  store i16 0, ptr %4, align 2, !tbaa !16
  br label %19

19:                                               ; preds = %13, %1, %9, %16
  %20 = phi i32 [ 0, %16 ], [ -7, %9 ], [ -7, %1 ], [ -12, %13 ]
  ret i32 %20
}

declare i32 @sswitch(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @savailable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @stell(ptr noundef) local_unnamed_addr #2

declare void @make_stream_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @sputs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zreadhexstring_at(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream_cursor_write_s, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %7 = load i16, ptr %6, align 8, !tbaa !23
  %8 = and i16 %7, 16160
  %9 = icmp eq i16 %8, 800
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %0, i64 -15
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %118, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @check_type_failed(ptr noundef nonnull %6) #6
  br label %118

16:                                               ; preds = %2
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.stream_s, ptr %18, i64 0, i32 17
  %20 = load i16, ptr %19, align 8, !tbaa !8
  %21 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !17
  %23 = icmp eq i16 %20, %22
  br i1 %23, label %53, label %24

24:                                               ; preds = %16
  %25 = icmp eq i16 %20, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.stream_s, ptr %18, i64 0, i32 18
  %28 = load i16, ptr %27, align 2, !tbaa !16
  %29 = icmp eq i16 %28, %22
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.stream_s, ptr %32, i64 0, i32 18
  %34 = load i16, ptr %33, align 2, !tbaa !16
  %35 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !17
  %37 = icmp eq i16 %34, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.stream_s, ptr %32, i64 0, i32 22
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @sswitch(ptr noundef %32, i32 noundef 0) #6
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i16, ptr %33, align 2, !tbaa !16
  %47 = getelementptr inbounds %struct.stream_s, ptr %32, i64 0, i32 17
  store i16 %46, ptr %47, align 8, !tbaa !8
  store i16 0, ptr %33, align 2, !tbaa !16
  br label %48

48:                                               ; preds = %30, %38, %42, %45
  %49 = phi i1 [ true, %45 ], [ false, %38 ], [ false, %30 ], [ false, %42 ]
  %50 = phi i32 [ 0, %45 ], [ -7, %38 ], [ -7, %30 ], [ -12, %42 ]
  br i1 %49, label %53, label %118

51:                                               ; preds = %24, %26
  %52 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !28
  br label %53

53:                                               ; preds = %51, %48, %16
  %54 = phi ptr [ %18, %48 ], [ %52, %51 ], [ %18, %16 ]
  %55 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %58 = load i16, ptr %57, align 2, !tbaa !17
  %59 = zext i16 %58 to i32
  %60 = icmp ugt i32 %59, %1
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = zext nneg i32 %1 to i64
  %63 = getelementptr inbounds i8, ptr %56, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5
  %65 = zext i8 %64 to i32
  %66 = icmp ugt i8 %64, 15
  %67 = select i1 %66, i32 -1, i32 %65
  br label %68

68:                                               ; preds = %53, %61
  %69 = phi i32 [ %67, %61 ], [ -1, %53 ]
  store i32 %69, ptr %4, align 4
  %70 = zext nneg i32 %1 to i64
  %71 = getelementptr inbounds i8, ptr %56, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 -1
  %73 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %5, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !38
  %74 = zext i16 %58 to i64
  %75 = getelementptr inbounds i8, ptr %56, i64 %74
  %76 = getelementptr inbounds i8, ptr %75, i64 -1
  %77 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %5, i64 0, i32 2
  store ptr %76, ptr %77, align 8, !tbaa !40
  %78 = getelementptr inbounds %struct.stream_s, ptr %54, i64 0, i32 3
  br label %79

79:                                               ; preds = %87, %68
  %80 = call i32 @s_hex_process(ptr noundef nonnull %78, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 0) #6
  switch i32 %80, label %90 [
    i32 1, label %81
    i32 0, label %84
  ]

81:                                               ; preds = %79
  %82 = load i64, ptr %55, align 8
  store i64 %82, ptr %17, align 8
  %83 = load i32, ptr %0, align 8
  store i32 %83, ptr %6, align 8
  store i16 1, ptr %55, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !23
  br label %118

84:                                               ; preds = %79
  %85 = call i32 @spgetcc(ptr noundef %54, i32 noundef 1) #6
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %78, align 8, !tbaa !5
  %89 = getelementptr inbounds i8, ptr %88, i64 -1
  store ptr %89, ptr %78, align 8, !tbaa !5
  br label %79, !llvm.loop !41

90:                                               ; preds = %79, %84
  %91 = phi i32 [ %85, %84 ], [ %80, %79 ]
  %92 = load ptr, ptr %73, align 8, !tbaa !38
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = ptrtoint ptr %93 to i64
  %95 = ptrtoint ptr %56 to i64
  %96 = sub i64 %94, %95
  %97 = icmp eq i32 %91, -1
  br i1 %97, label %114, label %98

98:                                               ; preds = %90
  %99 = trunc i64 %96 to i32
  %100 = icmp ult i32 %99, %59
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, ptr %4, align 4
  %103 = icmp slt i32 %102, 0
  %104 = trunc i32 %102 to i8
  %105 = select i1 %103, i8 16, i8 %104
  %106 = and i64 %96, 4294967295
  %107 = getelementptr inbounds i8, ptr %56, i64 %106
  store i8 %105, ptr %107, align 1, !tbaa !5
  br label %108

108:                                              ; preds = %101, %98
  switch i32 %91, label %118 [
    i32 -1, label %109
    i32 -3, label %110
    i32 -4, label %110
  ]

109:                                              ; preds = %108
  br label %118

110:                                              ; preds = %108, %108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %111 = and i64 %96, 4294967295
  %112 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store i64 %111, ptr %112, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !23
  %113 = call i32 @s_handle_read_exception(i32 noundef %91, ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @zreadhexstring_continue) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %118

114:                                              ; preds = %90
  %115 = load i64, ptr %55, align 8
  store i64 %115, ptr %17, align 8
  %116 = load i32, ptr %0, align 8
  store i32 %116, ptr %6, align 8
  %117 = trunc i64 %96 to i16
  store i16 %117, ptr %21, align 2, !tbaa !17
  store i16 0, ptr %55, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !23
  br label %118

118:                                              ; preds = %110, %109, %108, %14, %10, %48, %114, %81
  %119 = phi i32 [ 0, %81 ], [ 0, %114 ], [ %50, %48 ], [ %15, %14 ], [ -7, %10 ], [ %113, %110 ], [ 1, %109 ], [ -12, %108 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %119
}

declare i32 @s_hex_process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zreadline_at(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ref_s, align 8
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %6 = load i16, ptr %5, align 8, !tbaa !23
  %7 = and i16 %6, 16160
  %8 = icmp eq i16 %7, 800
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %0, i64 -15
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %153, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %5) #6
  br label %153

15:                                               ; preds = %3
  %16 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 17
  %19 = load i16, ptr %18, align 8, !tbaa !8
  %20 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !17
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %52, label %23

23:                                               ; preds = %15
  %24 = icmp eq i16 %19, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 18
  %27 = load i16, ptr %26, align 2, !tbaa !16
  %28 = icmp eq i16 %27, %21
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 18
  %33 = load i16, ptr %32, align 2, !tbaa !16
  %34 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !17
  %36 = icmp eq i16 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 22
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @sswitch(ptr noundef %31, i32 noundef 0) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i16, ptr %32, align 2, !tbaa !16
  %46 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 17
  store i16 %45, ptr %46, align 8, !tbaa !8
  store i16 0, ptr %32, align 2, !tbaa !16
  br label %47

47:                                               ; preds = %29, %37, %41, %44
  %48 = phi i1 [ true, %44 ], [ false, %37 ], [ false, %29 ], [ false, %41 ]
  %49 = phi i32 [ 0, %44 ], [ -7, %37 ], [ -7, %29 ], [ -12, %41 ]
  br i1 %48, label %52, label %153

50:                                               ; preds = %23, %25
  %51 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !28
  br label %52

52:                                               ; preds = %50, %47, %15
  %53 = phi ptr [ %17, %47 ], [ %51, %50 ], [ %17, %15 ]
  %54 = load i16, ptr %0, align 8, !tbaa !23
  %55 = and i16 %54, 16144
  %56 = icmp eq i16 %55, 4624
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %0, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !5
  %60 = icmp eq i8 %59, 18
  br i1 %60, label %153, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %153

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %67 = load i16, ptr %66, align 2, !tbaa !17
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %2, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.stream_s, ptr %53, i64 0, i32 3
  %72 = getelementptr inbounds %struct.stream_s, ptr %53, i64 0, i32 3, i32 0, i32 1
  br label %87

73:                                               ; preds = %119
  %74 = icmp eq i32 %121, 0
  br i1 %74, label %125, label %75

75:                                               ; preds = %73, %63
  %76 = phi i32 [ %1, %63 ], [ %120, %73 ]
  %77 = tail call i32 @spgetcc(ptr noundef %53, i32 noundef 0) #6
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %128, label %79

79:                                               ; preds = %75
  %80 = icmp slt i32 %77, 0
  br i1 %80, label %128, label %81

81:                                               ; preds = %79
  %82 = icmp eq i32 %77, 10
  br i1 %82, label %128, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.stream_s, ptr %53, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds i8, ptr %85, i64 -1
  store ptr %86, ptr %84, align 8, !tbaa !5
  br label %128

87:                                               ; preds = %125, %70
  %88 = phi i32 [ %1, %70 ], [ %120, %125 ]
  %89 = phi i32 [ %2, %70 ], [ %121, %125 ]
  %90 = phi i32 [ %1, %70 ], [ %122, %125 ]
  %91 = phi i32 [ undef, %70 ], [ %124, %125 ]
  %92 = load ptr, ptr %72, align 8, !tbaa !5
  %93 = load ptr, ptr %71, align 8, !tbaa !5
  %94 = ptrtoint ptr %92 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = icmp sgt i64 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %99, ptr %71, align 8, !tbaa !5
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i32
  br label %104

102:                                              ; preds = %87
  %103 = tail call i32 @spgetcc(ptr noundef %53, i32 noundef 1) #6
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i32 [ %101, %98 ], [ %103, %102 ]
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  switch i32 %105, label %109 [
    i32 13, label %119
    i32 10, label %108
  ]

108:                                              ; preds = %107
  br label %119

109:                                              ; preds = %107
  %110 = icmp ult i32 %90, %68
  br i1 %110, label %114, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %71, align 8, !tbaa !5
  %113 = getelementptr inbounds i8, ptr %112, i64 -1
  store ptr %113, ptr %71, align 8, !tbaa !5
  br label %119

114:                                              ; preds = %109
  %115 = trunc i32 %105 to i8
  %116 = add nuw nsw i32 %90, 1
  %117 = zext i32 %90 to i64
  %118 = getelementptr inbounds i8, ptr %65, i64 %117
  store i8 %115, ptr %118, align 1, !tbaa !5
  br label %119

119:                                              ; preds = %107, %104, %114, %111, %108
  %120 = phi i32 [ %88, %114 ], [ %90, %111 ], [ %90, %108 ], [ %90, %104 ], [ %90, %107 ]
  %121 = phi i32 [ %89, %114 ], [ %89, %111 ], [ %89, %108 ], [ %89, %104 ], [ 1, %107 ]
  %122 = phi i32 [ %116, %114 ], [ %90, %111 ], [ %90, %108 ], [ %90, %104 ], [ %90, %107 ]
  %123 = phi i32 [ 0, %114 ], [ 1, %111 ], [ 1, %108 ], [ 1, %104 ], [ 2, %107 ]
  %124 = phi i32 [ %91, %114 ], [ 1, %111 ], [ 0, %108 ], [ %105, %104 ], [ %91, %107 ]
  switch i32 %123, label %126 [
    i32 0, label %125
    i32 2, label %73
  ]

125:                                              ; preds = %119, %73
  br label %87, !llvm.loop !26

126:                                              ; preds = %119
  %127 = icmp ne i32 %121, 0
  br label %128

128:                                              ; preds = %126, %81, %83, %75, %79
  %129 = phi i32 [ %76, %79 ], [ %76, %75 ], [ %76, %83 ], [ %76, %81 ], [ %120, %126 ]
  %130 = phi i1 [ true, %79 ], [ false, %75 ], [ false, %83 ], [ false, %81 ], [ %127, %126 ]
  %131 = phi i32 [ %77, %79 ], [ 0, %75 ], [ 0, %83 ], [ 0, %81 ], [ %124, %126 ]
  switch i32 %131, label %132 [
    i32 0, label %149
    i32 -1, label %149
    i32 1, label %153
  ]

132:                                              ; preds = %128
  %133 = icmp ne i32 %129, 0
  %134 = select i1 %133, i1 true, i1 %130
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  switch i32 %131, label %153 [
    i32 -1, label %136
    i32 -3, label %137
    i32 -4, label %137
  ]

136:                                              ; preds = %135
  br label %153

137:                                              ; preds = %135, %135
  %138 = tail call i32 @s_handle_read_exception(i32 noundef %131, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @zreadline) #6
  br label %153

139:                                              ; preds = %132
  br i1 %130, label %140, label %142

140:                                              ; preds = %139
  %141 = trunc i32 %129 to i16
  store i16 %141, ptr %66, align 2, !tbaa !17
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i32 [ 0, %140 ], [ %129, %139 ]
  switch i32 %131, label %153 [
    i32 -1, label %144
    i32 -3, label %145
    i32 -4, label %145
  ]

144:                                              ; preds = %142
  br label %153

145:                                              ; preds = %142, %142
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %146 = zext i32 %143 to i64
  %147 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store i64 %146, ptr %147, align 8, !tbaa !5
  store i16 2816, ptr %4, align 8, !tbaa !23
  %148 = call i32 @s_handle_read_exception(i32 noundef %131, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @zreadline_continue) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %153

149:                                              ; preds = %128, %128
  %150 = trunc i32 %129 to i16
  store i16 %150, ptr %66, align 2, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !33
  %151 = icmp eq i32 %131, 0
  %152 = zext i1 %151 to i16
  store i16 %152, ptr %64, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !23
  br label %153

153:                                              ; preds = %145, %144, %142, %137, %136, %135, %128, %61, %57, %13, %9, %47, %149
  %154 = phi i32 [ 0, %149 ], [ %49, %47 ], [ %14, %13 ], [ -7, %9 ], [ %62, %61 ], [ -7, %57 ], [ -15, %128 ], [ %138, %137 ], [ 1, %136 ], [ -12, %135 ], [ %148, %145 ], [ 1, %144 ], [ -12, %142 ]
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zreadstring_at(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %6 = load i16, ptr %5, align 8, !tbaa !23
  %7 = and i16 %6, 16160
  %8 = icmp eq i16 %7, 800
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 -15
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %85, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %5) #6
  br label %85

15:                                               ; preds = %2
  %16 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 17
  %19 = load i16, ptr %18, align 8, !tbaa !8
  %20 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !17
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %52, label %23

23:                                               ; preds = %15
  %24 = icmp eq i16 %19, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 18
  %27 = load i16, ptr %26, align 2, !tbaa !16
  %28 = icmp eq i16 %27, %21
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 18
  %33 = load i16, ptr %32, align 2, !tbaa !16
  %34 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !17
  %36 = icmp eq i16 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 22
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @sswitch(ptr noundef %31, i32 noundef 0) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i16, ptr %32, align 2, !tbaa !16
  %46 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 17
  store i16 %45, ptr %46, align 8, !tbaa !8
  store i16 0, ptr %32, align 2, !tbaa !16
  br label %47

47:                                               ; preds = %29, %37, %41, %44
  %48 = phi i1 [ true, %44 ], [ false, %37 ], [ false, %29 ], [ false, %41 ]
  %49 = phi i32 [ 0, %44 ], [ -7, %37 ], [ -7, %29 ], [ -12, %41 ]
  br i1 %48, label %52, label %85

50:                                               ; preds = %23, %25
  %51 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !28
  br label %52

52:                                               ; preds = %50, %47, %15
  %53 = phi ptr [ %17, %47 ], [ %51, %50 ], [ %17, %15 ]
  %54 = load i16, ptr %0, align 8, !tbaa !23
  %55 = and i16 %54, 16144
  %56 = icmp eq i16 %55, 4624
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %0, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !5
  %60 = icmp eq i8 %59, 18
  br i1 %60, label %85, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %85

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !17
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = zext nneg i32 %1 to i64
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  %71 = sub nsw i32 %66, %1
  %72 = call i32 @sgets(ptr noundef %53, ptr noundef %70, i32 noundef %71, ptr noundef nonnull %4) #6
  %73 = load i32, ptr %4, align 4, !tbaa !25
  %74 = add i32 %73, %1
  store i32 %74, ptr %4, align 4, !tbaa !25
  switch i32 %72, label %85 [
    i32 -1, label %79
    i32 0, label %79
    i32 -4, label %75
    i32 -3, label %75
  ]

75:                                               ; preds = %63, %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store i64 %76, ptr %77, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !23
  %78 = call i32 @s_handle_read_exception(i32 noundef %72, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @zreadstring_continue) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %85

79:                                               ; preds = %63, %63
  %80 = icmp eq i16 %65, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %79
  %82 = trunc i32 %74 to i16
  store i16 %82, ptr %64, align 2, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !33
  %83 = icmp eq i32 %74, %66
  %84 = zext i1 %83 to i16
  store i16 %84, ptr %67, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !23
  br label %85

85:                                               ; preds = %75, %63, %79, %61, %57, %13, %9, %47, %81
  %86 = phi i32 [ 0, %81 ], [ %49, %47 ], [ %14, %13 ], [ -7, %9 ], [ %62, %61 ], [ -7, %57 ], [ -15, %79 ], [ %78, %75 ], [ -12, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %86
}

declare i32 @sgets(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @spseek(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @sungetc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zwritecvp_at(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store ptr %5, ptr %6, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %9 = load i16, ptr %8, align 8, !tbaa !23
  %10 = and i16 %9, 16144
  %11 = icmp eq i16 %10, 784
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %0, i64 -31
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %88, label %16

16:                                               ; preds = %12
  %17 = call i32 @check_type_failed(ptr noundef nonnull %8) #6
  br label %88

18:                                               ; preds = %2
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.stream_s, ptr %20, i64 0, i32 18
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !17
  %25 = icmp eq i16 %22, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %18
  %27 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.stream_s, ptr %28, i64 0, i32 17
  %30 = load i16, ptr %29, align 8, !tbaa !8
  %31 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !17
  %33 = icmp eq i16 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.stream_s, ptr %28, i64 0, i32 22
  %36 = load ptr, ptr %35, align 8, !tbaa !24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = call i32 @sswitch(ptr noundef %28, i32 noundef 1) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i16, ptr %29, align 8, !tbaa !8
  %43 = getelementptr inbounds %struct.stream_s, ptr %28, i64 0, i32 18
  store i16 %42, ptr %43, align 2, !tbaa !16
  store i16 0, ptr %29, align 8, !tbaa !8
  br label %44

44:                                               ; preds = %26, %34, %38, %41
  %45 = phi i1 [ true, %41 ], [ false, %34 ], [ false, %26 ], [ false, %38 ]
  %46 = phi i32 [ 0, %41 ], [ -7, %34 ], [ -7, %26 ], [ -12, %38 ]
  br i1 %45, label %47, label %88

47:                                               ; preds = %44, %18
  %48 = getelementptr inbounds i8, ptr %0, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !5
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @check_type_failed(ptr noundef %0) #6
  br label %88

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %55 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %56 = load i16, ptr %55, align 8, !tbaa !5
  %57 = zext i16 %56 to i32
  %58 = call i32 @obj_cvp(ptr noundef nonnull %54, ptr noundef nonnull %5, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %57) #6
  %59 = icmp slt i32 %58, 0
  %60 = load ptr, ptr %6, align 8
  %61 = icmp eq ptr %60, %5
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %88, label %63

63:                                               ; preds = %53
  %64 = load i32, ptr %7, align 4, !tbaa !25
  %65 = icmp ult i32 %64, %1
  br i1 %65, label %88, label %66

66:                                               ; preds = %63
  %67 = sub i32 %64, %1
  %68 = zext i32 %1 to i64
  %69 = getelementptr inbounds i8, ptr %60, i64 %68
  %70 = and i32 %67, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %71 = call i32 @sputs(ptr noundef %20, ptr noundef %69, i32 noundef %70, ptr noundef nonnull %4) #6
  %72 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  switch i32 %71, label %88 [
    i32 0, label %85
    i32 -3, label %73
    i32 -4, label %73
  ]

73:                                               ; preds = %66, %66
  %74 = and i32 %71, -2
  %75 = icmp eq i32 %74, -4
  %76 = select i1 %75, i32 %72, i32 0
  %77 = sub i32 %67, %76
  %78 = and i32 %77, 65535
  %79 = load i32, ptr %7, align 4, !tbaa !25
  %80 = sub i32 %79, %78
  store i32 %80, ptr %7, align 4, !tbaa !25
  br i1 %75, label %81, label %88

81:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store i64 %82, ptr %83, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !23
  %84 = call i32 @s_handle_write_exception(i32 noundef %71, ptr noundef nonnull %8, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @zwritecvp_continue) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %88

85:                                               ; preds = %66
  %86 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %87 = getelementptr inbounds %struct.ref_s, ptr %86, i64 -3
  store ptr %87, ptr @o_stack, align 8, !tbaa !21
  br label %88

88:                                               ; preds = %81, %73, %66, %63, %53, %16, %12, %44, %85, %51
  %89 = phi i32 [ 0, %85 ], [ %52, %51 ], [ %46, %44 ], [ %17, %16 ], [ -7, %12 ], [ %58, %53 ], [ -15, %63 ], [ -12, %66 ], [ %84, %81 ], [ -12, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  ret i32 %89
}

declare i32 @obj_cvp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zwritehexstring_at(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %7 = load i16, ptr %6, align 8, !tbaa !23
  %8 = and i16 %7, 16144
  %9 = icmp eq i16 %8, 784
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %0, i64 -15
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %128, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @check_type_failed(ptr noundef nonnull %6) #6
  br label %128

16:                                               ; preds = %2
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.stream_s, ptr %18, i64 0, i32 18
  %20 = load i16, ptr %19, align 2, !tbaa !16
  %21 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !17
  %23 = icmp eq i16 %20, %22
  br i1 %23, label %45, label %24

24:                                               ; preds = %16
  %25 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.stream_s, ptr %26, i64 0, i32 17
  %28 = load i16, ptr %27, align 8, !tbaa !8
  %29 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !17
  %31 = icmp eq i16 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.stream_s, ptr %26, i64 0, i32 22
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @sswitch(ptr noundef %26, i32 noundef 1) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i16, ptr %27, align 8, !tbaa !8
  %41 = getelementptr inbounds %struct.stream_s, ptr %26, i64 0, i32 18
  store i16 %40, ptr %41, align 2, !tbaa !16
  store i16 0, ptr %27, align 8, !tbaa !8
  br label %42

42:                                               ; preds = %24, %32, %36, %39
  %43 = phi i1 [ true, %39 ], [ false, %32 ], [ false, %24 ], [ false, %36 ]
  %44 = phi i32 [ 0, %39 ], [ -7, %32 ], [ -7, %24 ], [ -12, %36 ]
  br i1 %43, label %45, label %128

45:                                               ; preds = %42, %16
  %46 = phi i32 [ %44, %42 ], [ undef, %16 ]
  %47 = load i16, ptr %0, align 8, !tbaa !23
  %48 = and i16 %47, 16160
  %49 = icmp eq i16 %48, 4640
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %0, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = icmp eq i8 %52, 18
  br i1 %53, label %128, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %128

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !17
  %61 = zext i16 %60 to i32
  %62 = ptrtoint ptr %5 to i64
  %63 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  br label %64

64:                                               ; preds = %120, %56
  %65 = phi i32 [ %61, %56 ], [ %121, %120 ]
  %66 = phi ptr [ %58, %56 ], [ %76, %120 ]
  %67 = phi i32 [ %1, %56 ], [ %123, %120 ]
  %68 = phi i32 [ %46, %56 ], [ %124, %120 ]
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %125, label %70

70:                                               ; preds = %64
  %71 = call i32 @llvm.umin.i32(i32 %65, i32 64)
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i32 [ %71, %70 ], [ %89, %72 ]
  %74 = phi ptr [ %66, %70 ], [ %76, %72 ]
  %75 = phi ptr [ %5, %70 ], [ %88, %72 ]
  %76 = getelementptr inbounds i8, ptr %74, i64 1
  %77 = load i8, ptr %74, align 1, !tbaa !5
  %78 = zext i8 %77 to i32
  %79 = lshr i32 %78, 4
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr @.str.24, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !5
  %83 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 %82, ptr %75, align 1, !tbaa !5
  %84 = and i32 %78, 15
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr @.str.24, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = getelementptr inbounds i8, ptr %75, i64 2
  store i8 %87, ptr %83, align 1, !tbaa !5
  %89 = add nsw i32 %73, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %72, !llvm.loop !42

91:                                               ; preds = %72
  %92 = shl nuw nsw i32 %71, 1
  %93 = sub i32 %92, %67
  %94 = zext i32 %67 to i64
  %95 = getelementptr inbounds i8, ptr %5, i64 %94
  %96 = and i32 %93, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %97 = call i32 @sputs(ptr noundef %18, ptr noundef nonnull %95, i32 noundef %96, ptr noundef nonnull %4) #6
  %98 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  switch i32 %97, label %120 [
    i32 0, label %99
    i32 -3, label %101
    i32 -4, label %101
  ]

99:                                               ; preds = %91
  %100 = sub i32 %65, %71
  br label %120, !llvm.loop !43

101:                                              ; preds = %91, %91
  %102 = and i32 %97, -2
  %103 = icmp eq i32 %102, -4
  %104 = select i1 %103, i32 %98, i32 0
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %95, i64 %105
  %107 = ptrtoint ptr %106 to i64
  %108 = sub i64 %107, %62
  %109 = trunc i64 %108 to i32
  %110 = lshr i64 %108, 1
  %111 = load ptr, ptr %57, align 8, !tbaa !5
  %112 = and i64 %110, 2147483647
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  store ptr %113, ptr %57, align 8, !tbaa !5
  %114 = lshr i32 %109, 1
  %115 = sub i32 %65, %114
  %116 = trunc i32 %115 to i16
  store i16 %116, ptr %59, align 2, !tbaa !17
  br i1 %103, label %117, label %120

117:                                              ; preds = %101
  %118 = and i64 %107, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  store i64 %118, ptr %63, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !23
  %119 = call i32 @s_handle_write_exception(i32 noundef %97, ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @zwritehexstring_continue) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %120

120:                                              ; preds = %117, %101, %91, %99
  %121 = phi i32 [ %100, %99 ], [ %65, %91 ], [ %65, %101 ], [ %65, %117 ]
  %122 = phi i1 [ true, %99 ], [ false, %91 ], [ false, %101 ], [ false, %117 ]
  %123 = phi i32 [ 0, %99 ], [ %67, %91 ], [ %67, %101 ], [ %67, %117 ]
  %124 = phi i32 [ %68, %99 ], [ -12, %91 ], [ -12, %101 ], [ %119, %117 ]
  br i1 %122, label %64, label %128

125:                                              ; preds = %64
  %126 = load ptr, ptr @o_stack, align 8, !tbaa !21
  %127 = getelementptr inbounds %struct.ref_s, ptr %126, i64 -2
  store ptr %127, ptr @o_stack, align 8, !tbaa !21
  br label %128

128:                                              ; preds = %120, %54, %50, %14, %10, %42, %125
  %129 = phi i32 [ 0, %125 ], [ %44, %42 ], [ %15, %14 ], [ -7, %10 ], [ %55, %54 ], [ -7, %50 ], [ %124, %120 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  ret i32 %129
}

declare i32 @s_handle_read_exception(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @s_handle_write_exception(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = !{!9, !12, i64 176}
!9 = !{!"stream_s", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !10, i64 48, !11, i64 56, !11, i64 60, !12, i64 64, !6, i64 66, !6, i64 67, !13, i64 72, !14, i64 88, !15, i64 96, !10, i64 152, !11, i64 160, !11, i64 164, !10, i64 168, !12, i64 176, !12, i64 178, !10, i64 184, !10, i64 192, !11, i64 200, !10, i64 208, !11, i64 216, !10, i64 224}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"gs_string_s", !10, i64 0, !11, i64 8}
!14 = !{!"long", !6, i64 0}
!15 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!16 = !{!9, !12, i64 178}
!17 = !{!18, !12, i64 2}
!18 = !{!"ref_s", !19, i64 0, !6, i64 8}
!19 = !{!"tas_s", !12, i64 0, !12, i64 2}
!20 = !{!9, !6, i64 67}
!21 = !{!22, !10, i64 0}
!22 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !18, i64 24, !11, i64 40, !11, i64 44, !18, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !18, i64 88, !11, i64 104, !11, i64 108, !11, i64 112, !10, i64 120}
!23 = !{!18, !12, i64 0}
!24 = !{!9, !10, i64 208}
!25 = !{!11, !11, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!10, !10, i64 0}
!29 = !{!9, !10, i64 120}
!30 = !{!14, !14, i64 0}
!31 = !{!22, !10, i64 16}
!32 = !{!22, !11, i64 64}
!33 = !{i64 0, i64 2, !34, i64 2, i64 2, !34, i64 8, i64 8, !30, i64 8, i64 2, !34, i64 8, i64 4, !35, i64 8, i64 8, !30, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28, i64 8, i64 8, !28}
!34 = !{!12, !12, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !6, i64 0}
!37 = !{!9, !10, i64 112}
!38 = !{!39, !10, i64 8}
!39 = !{!"stream_cursor_write_s", !10, i64 0, !10, i64 8, !10, i64 16}
!40 = !{!39, !10, i64 16}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
