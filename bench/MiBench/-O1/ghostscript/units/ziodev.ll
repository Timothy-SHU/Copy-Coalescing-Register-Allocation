; ModuleID = 'ziodev.c'
source_filename = "ziodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_io_device_s = type { ptr, ptr, %struct.gx_io_device_procs_s }
%struct.gx_io_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@file_default_buffer_size = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"%stdin%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@gs_iodev_stdin = dso_local global %struct.gx_io_device_s { ptr @.str, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @stdin_init, ptr @stdin_open, ptr @iodev_no_open_file, ptr @iodev_no_fopen, ptr @iodev_no_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%stdout%\00", align 1
@gs_iodev_stdout = dso_local global %struct.gx_io_device_s { ptr @.str.2, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @stdout_init, ptr @stdout_open, ptr @iodev_no_open_file, ptr @iodev_no_fopen, ptr @iodev_no_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%stderr%\00", align 1
@gs_iodev_stderr = dso_local global %struct.gx_io_device_s { ptr @.str.3, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @stderr_init, ptr @stderr_open, ptr @iodev_no_open_file, ptr @iodev_no_fopen, ptr @iodev_no_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"%lineedit%\00", align 1
@gs_iodev_lineedit = dso_local local_unnamed_addr global %struct.gx_io_device_s { ptr @.str.4, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @iodev_no_init, ptr @lineedit_open, ptr @iodev_no_open_file, ptr @iodev_no_fopen, ptr @iodev_no_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"%statementedit%\00", align 1
@gs_iodev_statementedit = dso_local local_unnamed_addr global %struct.gx_io_device_s { ptr @.str.5, ptr @.str.1, %struct.gx_io_device_procs_s { ptr @iodev_no_init, ptr @statementedit_open, ptr @iodev_no_open_file, ptr @iodev_no_fopen, ptr @iodev_no_fclose, ptr @iodev_no_delete_file, ptr @iodev_no_rename_file, ptr @iodev_no_file_status, ptr @iodev_no_enumerate_files, ptr null, ptr null, ptr @iodev_no_get_params, ptr @iodev_no_put_params } }, align 8
@ref_stdin = internal global %struct.ref_s zeroinitializer, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"stdin_open(stream)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"stdin_open(buffer)\00", align 1
@gs_stdin = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ref_stdout = internal global %struct.ref_s zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"stdout_open(stream)\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"stdout_open(buffer)\00", align 1
@gs_stdout = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@ref_stderr = internal global %struct.ref_s zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"stderr_open(stream)\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"stderr_open(buffer)\00", align 1
@gs_stderr = external local_unnamed_addr global ptr, align 8
@ziodev_op_defs.op_defs_ = internal constant [2 x %struct.op_def] [%struct.op_def { ptr @.str.14, ptr @zgetiodevice }, %struct.op_def zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [14 x i8] c"1.getiodevice\00", align 1
@gs_stdin_is_interactive = dso_local local_unnamed_addr global i32 0, align 4
@stdin_init.pstdin = internal global ptr @ref_stdin, align 8
@invalid_file_entry = external local_unnamed_addr global ptr, align 8
@stdin_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"ref_stdin\00", align 1
@stdout_init.pstdout = internal global ptr @ref_stdout, align 8
@stdout_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"ref_stdout\00", align 1
@stderr_init.pstderr = internal global ptr @ref_stderr, align 8
@stderr_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"ref_stderr\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"lineedit_open(stream)\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"lineedit_open(buffer)\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"lineedit_open(grow buffer)\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"lineedit_open(resize buffer)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @iodev_os_open_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readnone %5) local_unnamed_addr #0 {
  %7 = load i32, ptr @file_default_buffer_size, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.gx_io_device_s, ptr %0, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = tail call i32 @file_open_stream(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %7, ptr noundef %4, ptr noundef %9) #9
  ret i32 %10
}

declare i32 @file_open_stream(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @stdin_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !13
  store ptr %3, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 1), align 8, !tbaa !14
  store i16 868, ptr @ref_stdin, align 8, !tbaa !15
  store i16 1, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 0, i32 1), align 2, !tbaa !19
  store i32 1, ptr @gs_stdin_is_interactive, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  tail call void %5(ptr noundef %1, ptr noundef nonnull @stdin_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @stdin_init.pstdin, ptr noundef nonnull @.str.15) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stdin_open(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #0 {
  %5 = load i8, ptr %1, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 114
  br i1 %6, label %7, label %38

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 1), align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 17
  %14 = load i16, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !28
  %17 = or i16 %16, %14
  %18 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %22 = tail call ptr @file_alloc_stream(ptr noundef %21, ptr noundef nonnull @.str.6) #9
  %23 = load ptr, ptr %21, align 8, !tbaa !29
  %24 = tail call ptr %23(ptr noundef nonnull %21, i32 noundef 128, ptr noundef nonnull @.str.7) #9
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr @gs_stdin, align 8, !tbaa !13
  tail call void @sread_file(ptr noundef %22, ptr noundef %29, ptr noundef %24, i32 noundef 128) #9
  %30 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 5
  store ptr @s_stdin_read_process, ptr %30, align 8, !tbaa !30
  %31 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 24
  store ptr @s_std_null, ptr %31, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 4
  store ptr @file_close_file, ptr %32, align 8, !tbaa !32
  store ptr %22, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 1), align 8, !tbaa !14
  store i16 868, ptr @ref_stdin, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 17
  %34 = load i16, ptr %33, align 8, !tbaa !23
  store i16 %34, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 0, i32 1), align 2, !tbaa !19
  br label %35

35:                                               ; preds = %11, %28
  %36 = phi ptr [ %22, %28 ], [ %12, %11 ]
  %37 = phi i32 [ 1, %28 ], [ 0, %11 ]
  store ptr %36, ptr %2, align 8, !tbaa !13
  br label %38

38:                                               ; preds = %35, %4, %7, %20
  %39 = phi i32 [ -9, %7 ], [ -9, %4 ], [ -25, %20 ], [ %37, %35 ]
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 0)
  ret i32 %40
}

declare i32 @iodev_no_open_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @iodev_no_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @iodev_no_fclose(ptr noundef, ptr noundef) #1

declare i32 @iodev_no_delete_file(ptr noundef, ptr noundef) #1

declare i32 @iodev_no_rename_file(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @iodev_no_file_status(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @iodev_no_enumerate_files(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @iodev_no_get_params(ptr noundef, ptr noundef) #1

declare i32 @iodev_no_put_params(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @stdout_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !13
  store ptr %3, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 1), align 8, !tbaa !14
  store i16 884, ptr @ref_stdout, align 8, !tbaa !15
  store i16 1, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  tail call void %5(ptr noundef %1, ptr noundef nonnull @stdout_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @stdout_init.pstdout, ptr noundef nonnull @.str.16) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stdout_open(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #0 {
  %5 = load i8, ptr %1, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 119
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 1), align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 17
  %14 = load i16, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !28
  %17 = or i16 %16, %14
  %18 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %22 = tail call ptr @file_alloc_stream(ptr noundef %21, ptr noundef nonnull @.str.9) #9
  %23 = load ptr, ptr %21, align 8, !tbaa !29
  %24 = tail call ptr %23(ptr noundef nonnull %21, i32 noundef 128, ptr noundef nonnull @.str.10) #9
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr @gs_stdout, align 8, !tbaa !13
  tail call void @swrite_file(ptr noundef %22, ptr noundef %29, ptr noundef %24, i32 noundef 128) #9
  %30 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 24
  store ptr @s_std_null, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 4
  store ptr @file_close_file, ptr %31, align 8, !tbaa !32
  store ptr %22, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 1), align 8, !tbaa !14
  store i16 788, ptr @ref_stdout, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 18
  %33 = load i16, ptr %32, align 2, !tbaa !28
  store i16 %33, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 0, i32 1), align 2, !tbaa !19
  br label %34

34:                                               ; preds = %11, %28
  %35 = phi ptr [ %22, %28 ], [ %12, %11 ]
  %36 = phi i32 [ 1, %28 ], [ 0, %11 ]
  store ptr %35, ptr %2, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %34, %4, %7, %20
  %38 = phi i32 [ -9, %7 ], [ -9, %4 ], [ -25, %20 ], [ %36, %34 ]
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 0)
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stderr_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !13
  store ptr %3, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 1), align 8, !tbaa !14
  store i16 884, ptr @ref_stderr, align 8, !tbaa !15
  store i16 1, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  tail call void %5(ptr noundef %1, ptr noundef nonnull @stderr_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @stderr_init.pstderr, ptr noundef nonnull @.str.17) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stderr_open(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #0 {
  %5 = load i8, ptr %1, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 119
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 1), align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 17
  %14 = load i16, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !28
  %17 = or i16 %16, %14
  %18 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %22 = tail call ptr @file_alloc_stream(ptr noundef %21, ptr noundef nonnull @.str.12) #9
  %23 = load ptr, ptr %21, align 8, !tbaa !29
  %24 = tail call ptr %23(ptr noundef nonnull %21, i32 noundef 128, ptr noundef nonnull @.str.13) #9
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr @gs_stderr, align 8, !tbaa !13
  tail call void @swrite_file(ptr noundef %22, ptr noundef %29, ptr noundef %24, i32 noundef 128) #9
  %30 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 24
  store ptr @s_std_null, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 4
  store ptr @file_close_file, ptr %31, align 8, !tbaa !32
  store ptr %22, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 1), align 8, !tbaa !14
  store i16 788, ptr @ref_stderr, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 18
  %33 = load i16, ptr %32, align 2, !tbaa !28
  store i16 %33, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 0, i32 1), align 2, !tbaa !19
  br label %34

34:                                               ; preds = %11, %28
  %35 = phi ptr [ %22, %28 ], [ %12, %11 ]
  %36 = phi i32 [ 1, %28 ], [ 0, %11 ]
  store ptr %35, ptr %2, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %34, %4, %7, %20
  %38 = phi i32 [ -9, %7 ], [ -9, %4 ], [ -25, %20 ], [ %36, %34 ]
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 0)
  ret i32 %39
}

declare i32 @iodev_no_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @lineedit_open(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.8) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %4
  %11 = tail call ptr @file_alloc_stream(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.gx_io_device_s, ptr @gs_iodev_stdin, i64 0, i32 2, i32 1), align 8, !tbaa !33
  %15 = call i32 %14(ptr noundef nonnull @gs_iodev_stdin, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %3) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = call ptr %19(ptr noundef %3, i32 noundef 20, ptr noundef nonnull @.str.19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 14
  br label %24

24:                                               ; preds = %22, %29
  %25 = phi ptr [ %34, %29 ], [ %20, %22 ]
  %26 = phi i32 [ %35, %29 ], [ 20, %22 ]
  %27 = load ptr, ptr %7, align 8, !tbaa !13
  %28 = call i32 @zreadline_from(ptr noundef %27, ptr noundef %25, i32 noundef %26, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  switch i32 %28, label %36 [
    i32 -1, label %38
    i32 0, label %37
    i32 1, label %29
  ]

29:                                               ; preds = %24
  %30 = shl i32 %26, 1
  %31 = load ptr, ptr %23, align 8, !tbaa !35
  %32 = call ptr %31(ptr noundef %3, ptr noundef %25, i32 noundef %26, i32 noundef %30, ptr noundef nonnull @.str.20) #9
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr %25, ptr %32
  %35 = select i1 %33, i32 %26, i32 %30
  br i1 %33, label %38, label %24

36:                                               ; preds = %24
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %29, %24, %37, %36
  %39 = phi ptr [ %25, %36 ], [ %25, %24 ], [ %34, %29 ], [ %25, %37 ]
  %40 = phi i32 [ %26, %36 ], [ %26, %24 ], [ %35, %29 ], [ %26, %37 ]
  %41 = phi i1 [ false, %36 ], [ false, %24 ], [ false, %29 ], [ true, %37 ]
  %42 = phi i32 [ -12, %36 ], [ -22, %24 ], [ -25, %29 ], [ %28, %37 ]
  br i1 %41, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !36
  call void %45(ptr noundef %3, ptr noundef %39, i32 noundef %40, ptr noundef nonnull @.str.19) #9
  br label %57

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 14
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = load i32, ptr %5, align 4, !tbaa !5
  %50 = call ptr %48(ptr noundef %3, ptr noundef %39, i32 noundef %40, i32 noundef %49, ptr noundef nonnull @.str.21) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %5, align 4, !tbaa !5
  call void @sread_string(ptr noundef nonnull %11, ptr noundef nonnull %50, i32 noundef %53) #9
  %54 = getelementptr inbounds %struct.stream_s, ptr %11, i64 0, i32 12, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  %56 = getelementptr inbounds %struct.stream_s, ptr %11, i64 0, i32 24
  store ptr %55, ptr %56, align 8, !tbaa !31
  store ptr @file_close_disable, ptr %54, align 8, !tbaa !32
  store ptr %11, ptr %2, align 8, !tbaa !13
  br label %57

57:                                               ; preds = %46, %17, %13, %10, %4, %52, %43
  %58 = phi i32 [ %42, %43 ], [ 0, %52 ], [ -9, %4 ], [ -25, %10 ], [ %15, %13 ], [ -25, %17 ], [ -25, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @statementedit_open(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) #0 {
  %5 = tail call i32 @lineedit_open(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !37
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @iodev_stdin_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load i8, ptr %1, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 114
  br i1 %6, label %7, label %38

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 1), align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 17
  %14 = load i16, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !28
  %17 = or i16 %16, %14
  %18 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %22 = tail call ptr @file_alloc_stream(ptr noundef %21, ptr noundef nonnull @.str.6) #9
  %23 = load ptr, ptr %21, align 8, !tbaa !29
  %24 = tail call ptr %23(ptr noundef nonnull %21, i32 noundef 128, ptr noundef nonnull @.str.7) #9
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr @gs_stdin, align 8, !tbaa !13
  tail call void @sread_file(ptr noundef %22, ptr noundef %29, ptr noundef %24, i32 noundef 128) #9
  %30 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 5
  store ptr @s_stdin_read_process, ptr %30, align 8, !tbaa !30
  %31 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 24
  store ptr @s_std_null, ptr %31, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 4
  store ptr @file_close_file, ptr %32, align 8, !tbaa !32
  store ptr %22, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 1), align 8, !tbaa !14
  store i16 868, ptr @ref_stdin, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 17
  %34 = load i16, ptr %33, align 8, !tbaa !23
  store i16 %34, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 0, i32 1), align 2, !tbaa !19
  br label %35

35:                                               ; preds = %11, %28
  %36 = phi ptr [ %22, %28 ], [ %12, %11 ]
  %37 = phi i32 [ 1, %28 ], [ 0, %11 ]
  store ptr %36, ptr %2, align 8, !tbaa !13
  br label %38

38:                                               ; preds = %35, %20, %4, %7
  %39 = phi i32 [ -9, %7 ], [ -9, %4 ], [ -25, %20 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @file_alloc_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sread_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal i32 @s_stdin_read_process(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 %3) #3 {
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i32, ptr @gs_stdin_is_interactive, align 4, !tbaa !5
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %14, i32 1
  %20 = getelementptr inbounds i8, ptr %10, i64 1
  %21 = zext nneg i32 %19 to i64
  %22 = tail call i64 @fread(ptr noundef nonnull %20, i64 noundef 1, i64 noundef %21, ptr noundef %6)
  %23 = trunc i64 %22 to i32
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = load ptr, ptr %9, align 8, !tbaa !41
  %26 = zext nneg i32 %24 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  store ptr %27, ptr %9, align 8, !tbaa !41
  br label %28

28:                                               ; preds = %4, %16
  %29 = phi i32 [ %19, %16 ], [ %14, %4 ]
  %30 = phi i32 [ %24, %16 ], [ 0, %4 ]
  %31 = tail call i32 @ferror(ptr noundef %6) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = tail call i32 @feof(ptr noundef %6) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = icmp eq i32 %30, %29
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %36, %33, %28
  %40 = phi i32 [ -2, %28 ], [ %38, %36 ], [ -1, %33 ]
  ret i32 %40
}

declare i32 @s_std_null(ptr noundef) #1

declare i32 @file_close_file(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zget_stdin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 1), align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 17
  %4 = load i16, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 18
  %6 = load i16, ptr %5, align 2, !tbaa !28
  %7 = or i16 %6, %4
  %8 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdin, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store ptr %2, ptr %0, align 8, !tbaa !13
  br label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.gx_io_device_s, ptr @gs_iodev_stdin, i64 0, i32 2, i32 1), align 8, !tbaa !33
  %13 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %14 = tail call i32 %12(ptr noundef nonnull @gs_iodev_stdin, ptr noundef nonnull @.str.8, ptr noundef %0, ptr noundef %13) #9
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 0, %10 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @iodev_stdout_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load i8, ptr %1, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 119
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 1), align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 17
  %14 = load i16, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !28
  %17 = or i16 %16, %14
  %18 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %22 = tail call ptr @file_alloc_stream(ptr noundef %21, ptr noundef nonnull @.str.9) #9
  %23 = load ptr, ptr %21, align 8, !tbaa !29
  %24 = tail call ptr %23(ptr noundef nonnull %21, i32 noundef 128, ptr noundef nonnull @.str.10) #9
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr @gs_stdout, align 8, !tbaa !13
  tail call void @swrite_file(ptr noundef %22, ptr noundef %29, ptr noundef %24, i32 noundef 128) #9
  %30 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 24
  store ptr @s_std_null, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 4
  store ptr @file_close_file, ptr %31, align 8, !tbaa !32
  store ptr %22, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 1), align 8, !tbaa !14
  store i16 788, ptr @ref_stdout, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 18
  %33 = load i16, ptr %32, align 2, !tbaa !28
  store i16 %33, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 0, i32 1), align 2, !tbaa !19
  br label %34

34:                                               ; preds = %11, %28
  %35 = phi ptr [ %22, %28 ], [ %12, %11 ]
  %36 = phi i32 [ 1, %28 ], [ 0, %11 ]
  store ptr %35, ptr %2, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %34, %20, %4, %7
  %38 = phi i32 [ -9, %7 ], [ -9, %4 ], [ -25, %20 ], [ %36, %34 ]
  ret i32 %38
}

declare void @swrite_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zget_stdout(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 1), align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 17
  %4 = load i16, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 18
  %6 = load i16, ptr %5, align 2, !tbaa !28
  %7 = or i16 %6, %4
  %8 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stdout, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store ptr %2, ptr %0, align 8, !tbaa !13
  br label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.gx_io_device_s, ptr @gs_iodev_stdout, i64 0, i32 2, i32 1), align 8, !tbaa !33
  %13 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %14 = tail call i32 %12(ptr noundef nonnull @gs_iodev_stdout, ptr noundef nonnull @.str.11, ptr noundef %0, ptr noundef %13) #9
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 0, %10 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @iodev_stderr_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load i8, ptr %1, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 119
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 1), align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 17
  %14 = load i16, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !28
  %17 = or i16 %16, %14
  %18 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %22 = tail call ptr @file_alloc_stream(ptr noundef %21, ptr noundef nonnull @.str.12) #9
  %23 = load ptr, ptr %21, align 8, !tbaa !29
  %24 = tail call ptr %23(ptr noundef nonnull %21, i32 noundef 128, ptr noundef nonnull @.str.13) #9
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr @gs_stderr, align 8, !tbaa !13
  tail call void @swrite_file(ptr noundef %22, ptr noundef %29, ptr noundef %24, i32 noundef 128) #9
  %30 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 24
  store ptr @s_std_null, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 12, i32 4
  store ptr @file_close_file, ptr %31, align 8, !tbaa !32
  store ptr %22, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 1), align 8, !tbaa !14
  store i16 788, ptr @ref_stderr, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.stream_s, ptr %22, i64 0, i32 18
  %33 = load i16, ptr %32, align 2, !tbaa !28
  store i16 %33, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 0, i32 1), align 2, !tbaa !19
  br label %34

34:                                               ; preds = %11, %28
  %35 = phi ptr [ %22, %28 ], [ %12, %11 ]
  %36 = phi i32 [ 1, %28 ], [ 0, %11 ]
  store ptr %35, ptr %2, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %34, %20, %4, %7
  %38 = phi i32 [ -9, %7 ], [ -9, %4 ], [ -25, %20 ], [ %36, %34 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zget_stderr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 1), align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 17
  %4 = load i16, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 18
  %6 = load i16, ptr %5, align 2, !tbaa !28
  %7 = or i16 %6, %4
  %8 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_stderr, i64 0, i32 0, i32 1), align 2, !tbaa !19
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store ptr %2, ptr %0, align 8, !tbaa !13
  br label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.gx_io_device_s, ptr @gs_iodev_stderr, i64 0, i32 2, i32 1), align 8, !tbaa !33
  %13 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !14
  %14 = tail call i32 %12(ptr noundef nonnull @gs_iodev_stderr, ptr noundef nonnull @.str.11, ptr noundef %0, ptr noundef %13) #9
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 0, %10 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ziodev_op_defs() local_unnamed_addr #4 {
  ret ptr @ziodev_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetiodevice(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = add i64 %9, 2147483648
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = trunc i64 %9 to i32
  %14 = tail call ptr @gs_getiodevice(i32 noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !42
  store ptr %17, ptr %8, align 8, !tbaa !14
  store i16 4704, ptr %0, align 8, !tbaa !15
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #10
  %19 = trunc i64 %18 to i16
  %20 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %19, ptr %20, align 2, !tbaa !19
  br label %21

21:                                               ; preds = %12, %7, %16, %5
  %22 = phi i32 [ 0, %16 ], [ %6, %5 ], [ -15, %7 ], [ -15, %12 ]
  ret i32 %22
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare i32 @zreadline_from(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @file_close_disable(ptr noundef) #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

declare ptr @gs_getiodevice(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 40}
!10 = !{!"gx_io_device_s", !11, i64 0, !11, i64 8, !12, i64 16}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"gx_io_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!13 = !{!11, !11, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !18, i64 0}
!16 = !{!"ref_s", !17, i64 0, !7, i64 8}
!17 = !{!"tas_s", !18, i64 0, !18, i64 2}
!18 = !{!"short", !7, i64 0}
!19 = !{!16, !18, i64 2}
!20 = !{!21, !11, i64 128}
!21 = !{!"gs_memory_s", !22, i64 0}
!22 = !{!"gs_memory_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!23 = !{!24, !18, i64 176}
!24 = !{!"stream_s", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !11, i64 48, !6, i64 56, !6, i64 60, !18, i64 64, !7, i64 66, !7, i64 67, !25, i64 72, !26, i64 88, !27, i64 96, !11, i64 152, !6, i64 160, !6, i64 164, !11, i64 168, !18, i64 176, !18, i64 178, !11, i64 184, !11, i64 192, !6, i64 200, !11, i64 208, !6, i64 216, !11, i64 224}
!25 = !{!"gs_string_s", !11, i64 0, !6, i64 8}
!26 = !{!"long", !7, i64 0}
!27 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!28 = !{!24, !18, i64 178}
!29 = !{!21, !11, i64 0}
!30 = !{!24, !11, i64 136}
!31 = !{!24, !11, i64 224}
!32 = !{!24, !11, i64 128}
!33 = !{!10, !11, i64 24}
!34 = !{!21, !11, i64 96}
!35 = !{!21, !11, i64 112}
!36 = !{!21, !11, i64 120}
!37 = !{i32 -2147483648, i32 2}
!38 = !{!24, !11, i64 208}
!39 = !{!40, !11, i64 16}
!40 = !{!"stream_cursor_write_s", !11, i64 0, !11, i64 8, !11, i64 16}
!41 = !{!40, !11, i64 8}
!42 = !{!10, !11, i64 0}
