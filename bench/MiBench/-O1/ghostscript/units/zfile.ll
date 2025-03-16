; ModuleID = 'zfile.c'
source_filename = "zfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.parsed_file_name_s = type { ptr, ptr, i32 }
%struct.gx_io_device_s = type { ptr, ptr, %struct.gx_io_device_procs_s }
%struct.gx_io_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.gs_main_instance_s = type { ptr, ptr, ptr, i32, i64, i32, i32, i32, i32, %struct.gs_file_path_s }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, ptr, ptr, i32 }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_state_s = type { ptr, ptr, ptr }

@file_default_buffer_size = dso_local local_unnamed_addr constant i32 512, align 4
@invalid_file_entry = dso_local global ptr null, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@gp_file_name_list_separator = external constant i8, align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"findlibfile\00", align 1
@zfile_op_defs.op_defs_ = internal constant [13 x %struct.op_def] [%struct.op_def { ptr @.str.2, ptr @zdeletefile }, %struct.op_def { ptr @.str.3, ptr @zexecfile }, %struct.op_def { ptr @.str.4, ptr @zfile }, %struct.op_def { ptr @.str.5, ptr @zfilenameforall }, %struct.op_def { ptr @.str.6, ptr @zfilenamedirseparator }, %struct.op_def { ptr @.str.7, ptr @zfilenamelistseparator }, %struct.op_def { ptr @.str.8, ptr @zfilenamesplit }, %struct.op_def { ptr @.str.9, ptr @zfindlibfile }, %struct.op_def { ptr @.str.10, ptr @zrenamefile }, %struct.op_def { ptr @.str.11, ptr @zstatus }, %struct.op_def { ptr @.str.12, ptr @file_continue }, %struct.op_def { ptr @.str.13, ptr @execfile_finish }, %struct.op_def { ptr null, ptr @zfile_init }], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"1deletefile\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"1.execfile\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"2file\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"3filenameforall\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"2.filenamedirseparator\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"0.filenamelistseparator\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"1.filenamesplit\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"1findlibfile\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"2renamefile\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"1status\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"0%file_continue\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"0%execfile_finish\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"file_read_string\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"file_open_stream\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"file_open(buffer)\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"filter_open(stream_state)\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"filter_open(buffer)\00", align 1
@file_list = internal global ptr null, align 8
@.str.19 = private unnamed_addr constant [31 x i8] c"file_close(temp stream buffer)\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"file_close(buffer)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"deletefile\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"renamefile(from)\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"renamefile(to)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"zfile_init\00", align 1
@invalid_file_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"invalid_file_entry\00", align 1
@file_list_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"file_list\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @make_invalid_file(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !9
  store i16 772, ptr %0, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 -1, ptr %4, align 2, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zfile(ptr noundef %0) #1 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.parsed_file_name_s, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = load i16, ptr %0, align 8, !tbaa !10
  %6 = and i16 %5, 16160
  %7 = icmp eq i16 %6, 4640
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 18
  br i1 %11, label %90, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #12
  br label %90

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !14
  switch i16 %18, label %90 [
    i16 2, label %19
    i16 1, label %25
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = icmp eq i8 %21, 43
  br i1 %22, label %23, label %90

23:                                               ; preds = %19
  %24 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 1
  store i8 43, ptr %24, align 1, !tbaa !9
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi i64 [ 2, %23 ], [ 1, %14 ]
  %27 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !9
  %28 = load i8, ptr %16, align 1, !tbaa !9
  switch i8 %28, label %90 [
    i8 114, label %29
    i8 119, label %29
    i8 97, label %29
  ]

29:                                               ; preds = %25, %25, %25
  store i8 %28, ptr %2, align 1, !tbaa !9
  %30 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %31 = call i32 @parse_file_name(ptr noundef nonnull %30, ptr noundef nonnull %3) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %90, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8, !tbaa !15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call ptr @gs_getiodevice(i32 noundef 0) #12
  store ptr %37, ptr %3, align 8, !tbaa !15
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds %struct.parsed_file_name_s, ptr %3, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !18
  %41 = icmp eq ptr %40, null
  %42 = load ptr, ptr %3, align 8, !tbaa !15
  br i1 %41, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.gx_io_device_s, ptr %42, i64 0, i32 2, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  %46 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %47 = call i32 %45(ptr noundef %42, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %46) #12
  br label %57

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.gx_io_device_s, ptr %42, i64 0, i32 2, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !24
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr @iodev_os_open_file, ptr %50
  %53 = getelementptr inbounds %struct.parsed_file_name_s, ptr %3, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !25
  %55 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %56 = call i32 %52(ptr noundef %42, ptr noundef nonnull %40, i32 noundef %54, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %55) #12
  br label %57

57:                                               ; preds = %48, %43
  %58 = phi i32 [ %47, %43 ], [ %56, %48 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %4, align 8, !tbaa !5
  %62 = getelementptr inbounds i8, ptr %2, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = icmp eq i8 %63, 43
  %65 = select i1 %64, i32 112, i32 0
  %66 = getelementptr inbounds %struct.stream_s, ptr %61, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !26
  %68 = call i32 @imemory_space(ptr noundef %67) #12
  %69 = or i32 %65, %68
  %70 = load i8, ptr %2, align 1, !tbaa !9
  %71 = icmp eq i8 %70, 114
  %72 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store ptr %61, ptr %72, align 8, !tbaa !9
  %73 = trunc i32 %69 to i16
  %74 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  br i1 %71, label %75, label %81

75:                                               ; preds = %60
  %76 = or i16 %73, 96
  %77 = add i16 %76, 768
  store i16 %77, ptr %30, align 8, !tbaa !10
  %78 = getelementptr inbounds %struct.stream_s, ptr %61, i64 0, i32 17
  %79 = load i16, ptr %78, align 8, !tbaa !31
  store i16 %79, ptr %74, align 2, !tbaa !14
  %80 = getelementptr inbounds %struct.stream_s, ptr %61, i64 0, i32 18
  store i16 0, ptr %80, align 2, !tbaa !32
  br label %87

81:                                               ; preds = %60
  %82 = or i16 %73, 16
  %83 = add i16 %82, 768
  store i16 %83, ptr %30, align 8, !tbaa !10
  %84 = getelementptr inbounds %struct.stream_s, ptr %61, i64 0, i32 18
  %85 = load i16, ptr %84, align 2, !tbaa !32
  store i16 %85, ptr %74, align 2, !tbaa !14
  %86 = getelementptr inbounds %struct.stream_s, ptr %61, i64 0, i32 17
  store i16 0, ptr %86, align 8, !tbaa !31
  br label %87

87:                                               ; preds = %75, %81
  %88 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %89 = getelementptr inbounds %struct.ref_s, ptr %88, i64 -1
  store ptr %89, ptr @o_stack, align 8, !tbaa !33
  br label %90

90:                                               ; preds = %57, %29, %25, %14, %19, %12, %8, %87
  %91 = phi i32 [ %58, %87 ], [ %13, %12 ], [ -7, %8 ], [ -9, %19 ], [ -9, %14 ], [ -9, %25 ], [ %31, %29 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #12
  ret i32 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @parse_file_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gs_getiodevice(i32 noundef) local_unnamed_addr #3

declare i32 @iodev_os_open_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @make_stream_file(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 43
  %7 = select i1 %6, i32 112, i32 0
  %8 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = tail call i32 @imemory_space(ptr noundef %9) #12
  %11 = or i32 %7, %10
  %12 = load i8, ptr %2, align 1, !tbaa !9
  %13 = icmp eq i8 %12, 114
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !9
  %15 = trunc i32 %11 to i16
  %16 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  br i1 %13, label %17, label %23

17:                                               ; preds = %3
  %18 = or i16 %15, 96
  %19 = add i16 %18, 768
  store i16 %19, ptr %0, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 17
  %21 = load i16, ptr %20, align 8, !tbaa !31
  store i16 %21, ptr %16, align 2, !tbaa !14
  %22 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 18
  store i16 0, ptr %22, align 2, !tbaa !32
  br label %29

23:                                               ; preds = %3
  %24 = or i16 %15, 16
  %25 = add i16 %24, 768
  store i16 %25, ptr %0, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 18
  %27 = load i16, ptr %26, align 2, !tbaa !32
  store i16 %27, ptr %16, align 2, !tbaa !14
  %28 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 17
  store i16 0, ptr %28, align 8, !tbaa !31
  br label %29

29:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zfilenamedirseparator(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !10
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 4640
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #12
  br label %38

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %13 = load i16, ptr %12, align 8, !tbaa !10
  %14 = and i16 %13, 16160
  %15 = icmp eq i16 %14, 4640
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %0, i64 -15
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 18
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @check_type_failed(ptr noundef nonnull %12) #12
  br label %38

22:                                               ; preds = %11
  %23 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !14
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !14
  %32 = zext i16 %31 to i32
  %33 = tail call ptr @gp_file_name_concat_string(ptr noundef %24, i32 noundef %27, ptr noundef %29, i32 noundef %32) #12
  store ptr %33, ptr %23, align 8, !tbaa !9
  store i16 4704, ptr %12, align 8, !tbaa !10
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #13
  %35 = trunc i64 %34 to i16
  store i16 %35, ptr %25, align 2, !tbaa !14
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -1
  store ptr %37, ptr @o_stack, align 8, !tbaa !33
  br label %38

38:                                               ; preds = %20, %16, %9, %5, %22
  %39 = phi i32 [ 0, %22 ], [ %10, %9 ], [ -7, %5 ], [ %21, %20 ], [ -7, %16 ]
  ret i32 %39
}

declare ptr @gp_file_name_concat_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local noundef i32 @zfilenamelistseparator(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %9

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store ptr @gp_file_name_list_separator, ptr %7, align 8, !tbaa !9
  store i16 4704, ptr %2, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 0, i32 1
  store i16 1, ptr %8, align 2, !tbaa !14
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zfilenamesplit(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !10
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 4640
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #12
  br label %11

11:                                               ; preds = %1, %9, %5
  %12 = phi i32 [ %10, %9 ], [ -7, %5 ], [ -21, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zfindlibfile(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca [200 x i8], align 16
  %4 = alloca %struct.parsed_file_name_s, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %7 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %132

13:                                               ; preds = %1
  %14 = call i32 @parse_file_name(ptr noundef %0, ptr noundef nonnull %4) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %132, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8, !tbaa !15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call ptr @gs_getiodevice(i32 noundef 0) #12
  store ptr %20, ptr %4, align 8, !tbaa !15
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr %4, align 8, !tbaa !15
  %23 = call ptr @gs_getiodevice(i32 noundef 0) #12
  %24 = icmp eq ptr %22, %23
  %25 = getelementptr inbounds %struct.parsed_file_name_s, ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  br i1 %24, label %65, label %27

27:                                               ; preds = %21
  %28 = icmp eq ptr %26, null
  %29 = load ptr, ptr %4, align 8, !tbaa !15
  br i1 %28, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gx_io_device_s, ptr %29, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %34 = call i32 %32(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull %5, ptr noundef %33) #12
  br label %42

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.gx_io_device_s, ptr %29, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !24
  %38 = getelementptr inbounds %struct.parsed_file_name_s, ptr %4, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !25
  %40 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %41 = call i32 %37(ptr noundef %29, ptr noundef nonnull %26, i32 noundef %39, ptr noundef nonnull @.str, ptr noundef nonnull %5, ptr noundef %40) #12
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi i32 [ %34, %30 ], [ %41, %35 ]
  %44 = icmp slt i32 %43, 0
  %45 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  br i1 %44, label %46, label %52

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %48 = icmp ugt ptr %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %132

50:                                               ; preds = %46
  store ptr %45, ptr @o_stack, align 8, !tbaa !33
  %51 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 0, ptr %51, align 8, !tbaa !9
  store i16 256, ptr %45, align 8, !tbaa !10
  br label %132

52:                                               ; preds = %42
  %53 = load ptr, ptr %5, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.stream_s, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !26
  %56 = call i32 @imemory_space(ptr noundef %55) #12
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store ptr %53, ptr %57, align 8, !tbaa !9
  %58 = trunc i32 %56 to i16
  %59 = or i16 %58, 96
  %60 = add i16 %59, 768
  store i16 %60, ptr %45, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.stream_s, ptr %53, i64 0, i32 17
  %62 = load i16, ptr %61, align 8, !tbaa !31
  %63 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 0, i32 1
  store i16 %62, ptr %63, align 2, !tbaa !14
  %64 = getelementptr inbounds %struct.stream_s, ptr %53, i64 0, i32 18
  store i16 0, ptr %64, align 2, !tbaa !32
  br label %124

65:                                               ; preds = %21
  %66 = getelementptr inbounds %struct.parsed_file_name_s, ptr %4, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !25
  %68 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %69 = call i32 @file_open_stream(ptr noundef %26, i32 noundef %67, ptr noundef nonnull @.str, i32 noundef 512, ptr noundef nonnull %2, ptr noundef nonnull @lib_file_fopen)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %2, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.stream_s, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !37
  %75 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #13
  %76 = trunc i64 %75 to i32
  %77 = icmp ugt i32 %76, 200
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @sclose(ptr noundef %72) #12
  br label %93

80:                                               ; preds = %71
  %81 = and i64 %75, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %74, i64 %81, i1 false)
  %82 = getelementptr inbounds %struct.stream_s, ptr %72, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !26
  %84 = call i32 @imemory_space(ptr noundef %83) #12
  %85 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store ptr %72, ptr %85, align 8, !tbaa !9
  %86 = trunc i32 %84 to i16
  %87 = or i16 %86, 96
  %88 = add i16 %87, 768
  store i16 %88, ptr %68, align 8, !tbaa !10
  %89 = getelementptr inbounds %struct.stream_s, ptr %72, i64 0, i32 17
  %90 = load i16, ptr %89, align 8, !tbaa !31
  %91 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 0, i32 1
  store i16 %90, ptr %91, align 2, !tbaa !14
  %92 = getelementptr inbounds %struct.stream_s, ptr %72, i64 0, i32 18
  store i16 0, ptr %92, align 2, !tbaa !32
  br label %93

93:                                               ; preds = %65, %78, %80
  %94 = phi i32 [ undef, %65 ], [ undef, %78 ], [ %76, %80 ]
  %95 = phi i32 [ %69, %65 ], [ -13, %78 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %96 = icmp eq i32 %95, -25
  br i1 %96, label %120, label %97

97:                                               ; preds = %93
  %98 = icmp slt i32 %95, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %97
  %100 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %101 = icmp ugt ptr %68, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %120

103:                                              ; preds = %99
  store ptr %68, ptr @o_stack, align 8, !tbaa !33
  %104 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 0, ptr %104, align 8, !tbaa !9
  store i16 256, ptr %68, align 8, !tbaa !10
  br label %120

105:                                              ; preds = %97
  %106 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %107 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %106, i64 0, i32 12
  %108 = load ptr, ptr %107, align 8, !tbaa !38
  %109 = call ptr %108(ptr noundef %106, i32 noundef %94, ptr noundef nonnull @.str.1) #12
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %105
  %112 = zext i32 %94 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %109, ptr nonnull align 16 %3, i64 %112, i1 false)
  %113 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %109, ptr %113, align 8, !tbaa !9
  %114 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !41
  %115 = trunc i32 %114 to i16
  %116 = or i16 %115, 112
  %117 = add i16 %116, 4608
  store i16 %117, ptr %0, align 8, !tbaa !10
  %118 = trunc i32 %94 to i16
  %119 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %118, ptr %119, align 2, !tbaa !14
  br label %120

120:                                              ; preds = %105, %93, %111, %103, %102
  %121 = phi ptr [ %68, %102 ], [ %68, %103 ], [ %0, %111 ], [ %0, %93 ], [ %0, %105 ]
  %122 = phi i1 [ false, %102 ], [ false, %103 ], [ true, %111 ], [ false, %93 ], [ false, %105 ]
  %123 = phi i32 [ -16, %102 ], [ 0, %103 ], [ undef, %111 ], [ -25, %93 ], [ -25, %105 ]
  br i1 %122, label %124, label %132

124:                                              ; preds = %52, %120
  %125 = phi ptr [ %0, %52 ], [ %121, %120 ]
  %126 = getelementptr inbounds %struct.ref_s, ptr %125, i64 2
  %127 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %128 = icmp ugt ptr %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %132

130:                                              ; preds = %124
  store ptr %126, ptr @o_stack, align 8, !tbaa !33
  %131 = getelementptr inbounds %struct.ref_s, ptr %125, i64 2, i32 1
  store i16 1, ptr %131, align 8, !tbaa !9
  store i16 256, ptr %126, align 8, !tbaa !10
  br label %132

132:                                              ; preds = %13, %120, %130, %129, %50, %49, %12
  %133 = phi i32 [ -16, %12 ], [ -16, %49 ], [ 0, %50 ], [ -16, %129 ], [ 0, %130 ], [ %123, %120 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3)
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lib_file_open(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %8 = call i32 @file_open_stream(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 512, ptr noundef nonnull %7, ptr noundef nonnull @lib_file_fopen)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.stream_s, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #13
  %15 = trunc i64 %14 to i32
  %16 = icmp ugt i32 %15, %3
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call i32 @sclose(ptr noundef %11) #12
  br label %32

19:                                               ; preds = %10
  %20 = and i64 %14, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %13, i64 %20, i1 false)
  store i32 %15, ptr %4, align 4, !tbaa !42
  %21 = getelementptr inbounds %struct.stream_s, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  %23 = tail call i32 @imemory_space(ptr noundef %22) #12
  %24 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store ptr %11, ptr %24, align 8, !tbaa !9
  %25 = trunc i32 %23 to i16
  %26 = or i16 %25, 96
  %27 = add i16 %26, 768
  store i16 %27, ptr %5, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.stream_s, ptr %11, i64 0, i32 17
  %29 = load i16, ptr %28, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct.tas_s, ptr %5, i64 0, i32 1
  store i16 %29, ptr %30, align 2, !tbaa !14
  %31 = getelementptr inbounds %struct.stream_s, ptr %11, i64 0, i32 18
  store i16 0, ptr %31, align 2, !tbaa !32
  br label %32

32:                                               ; preds = %6, %19, %17
  %33 = phi i32 [ -13, %17 ], [ 0, %19 ], [ %8, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfile_op_defs() local_unnamed_addr #7 {
  ret ptr @zfile_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zdeletefile(ptr noundef %0) #1 {
  %2 = alloca %struct.parsed_file_name_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  %3 = call i32 @parse_real_file_name(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.gx_io_device_s, ptr %6, i64 0, i32 2, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.parsed_file_name_s, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = call i32 %8(ptr noundef %6, ptr noundef %10) #12
  call void @free_file_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -1
  store ptr %15, ptr @o_stack, align 8, !tbaa !33
  br label %16

16:                                               ; preds = %5, %1, %13
  %17 = phi i32 [ 0, %13 ], [ %3, %1 ], [ %11, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecfile(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !10
  %3 = and i16 %2, 16352
  %4 = icmp eq i16 %3, 992
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #12
  br label %29

11:                                               ; preds = %1
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 -4
  %15 = icmp ugt ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 4) #12
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %29

19:                                               ; preds = %16, %11
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1
  store ptr %21, ptr @e_stack, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1, i32 1
  store ptr @execfile_cleanup, ptr %22, align 8, !tbaa !9
  store i16 3712, ptr %21, align 8, !tbaa !10
  %23 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1, i32 0, i32 1
  store i16 0, ptr %23, align 2, !tbaa !14
  %24 = getelementptr inbounds %struct.ref_s, ptr %20, i64 2
  store ptr %24, ptr @e_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !44
  %25 = getelementptr inbounds %struct.ref_s, ptr %20, i64 3
  store ptr %25, ptr @e_stack, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.ref_s, ptr %20, i64 3, i32 1
  store ptr @execfile_finish, ptr %26, align 8, !tbaa !9
  store i16 3968, ptr %25, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.ref_s, ptr %20, i64 3, i32 0, i32 1
  store i16 0, ptr %27, align 2, !tbaa !14
  %28 = tail call i32 @zexec(ptr noundef nonnull %0) #12
  br label %29

29:                                               ; preds = %16, %9, %5, %19
  %30 = phi i32 [ %17, %16 ], [ %28, %19 ], [ %10, %9 ], [ -7, %5 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zfilenameforall(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !10
  %3 = and i16 %2, 16144
  %4 = icmp eq i16 %3, 4624
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %89, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #12
  br label %89

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %13 = load i16, ptr %12, align 8, !tbaa !10
  %14 = and i16 %13, 15552
  %15 = icmp eq i16 %14, 1216
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @check_proc_failed(ptr noundef nonnull %12) #12
  br label %89

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %20 = load i16, ptr %19, align 8, !tbaa !10
  %21 = and i16 %20, 16160
  %22 = icmp eq i16 %21, 4640
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %0, i64 -31
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = icmp eq i8 %25, 18
  br i1 %26, label %89, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @check_type_failed(ptr noundef nonnull %19) #12
  br label %89

29:                                               ; preds = %18
  %30 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %31 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 -7
  %33 = icmp ugt ptr %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 7) #12
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %89

37:                                               ; preds = %34, %29
  %38 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !14
  %42 = zext i16 %41 to i32
  %43 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %44 = tail call ptr @gp_enumerate_files_init(ptr noundef %39, i32 noundef %42, ptr noundef %43) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %89, label %46

46:                                               ; preds = %37
  %47 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %48 = getelementptr inbounds %struct.ref_s, ptr %47, i64 1
  store ptr %48, ptr @e_stack, align 8, !tbaa !33
  %49 = getelementptr inbounds %struct.ref_s, ptr %47, i64 1, i32 1
  store ptr @file_cleanup, ptr %49, align 8, !tbaa !9
  store i16 3712, ptr %48, align 8, !tbaa !10
  %50 = getelementptr inbounds %struct.ref_s, ptr %47, i64 1, i32 0, i32 1
  store i16 2, ptr %50, align 2, !tbaa !14
  %51 = getelementptr inbounds %struct.ref_s, ptr %47, i64 2
  store ptr %51, ptr @e_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !44
  %52 = getelementptr inbounds %struct.ref_s, ptr %47, i64 3
  store ptr %52, ptr @e_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !44
  %53 = getelementptr inbounds %struct.ref_s, ptr %47, i64 4
  store ptr %53, ptr @e_stack, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.ref_s, ptr %47, i64 4, i32 1
  store ptr %44, ptr %54, align 8, !tbaa !9
  %55 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !41
  %56 = trunc i32 %55 to i16
  %57 = add i16 %56, 2048
  store i16 %57, ptr %53, align 8, !tbaa !10
  %58 = getelementptr inbounds %struct.ref_s, ptr %47, i64 5
  store ptr %58, ptr @e_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !44
  %59 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %60 = getelementptr inbounds %struct.ref_s, ptr %59, i64 -3
  store ptr %60, ptr @o_stack, align 8, !tbaa !33
  %61 = getelementptr inbounds %struct.ref_s, ptr %47, i64 3
  %62 = getelementptr %struct.ref_s, ptr %47, i64 4, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  %64 = getelementptr %struct.ref_s, ptr %47, i64 3, i32 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !14
  %66 = zext i16 %65 to i32
  %67 = getelementptr %struct.ref_s, ptr %47, i64 3, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  %69 = tail call i32 @gp_enumerate_files_next(ptr noundef %63, ptr noundef %68, i32 noundef %66) #12
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %46
  %72 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %73 = getelementptr inbounds %struct.ref_s, ptr %72, i64 -4
  store ptr %73, ptr @e_stack, align 8, !tbaa !33
  br label %89

74:                                               ; preds = %46
  %75 = icmp ugt i32 %69, %66
  br i1 %75, label %89, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %78 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %79 = icmp ugt ptr %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %89

81:                                               ; preds = %76
  store ptr %77, ptr @o_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(16) %61, i64 16, i1 false), !tbaa.struct !44
  %82 = trunc i32 %69 to i16
  %83 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  store i16 %82, ptr %83, align 2, !tbaa !14
  %84 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %85 = getelementptr inbounds %struct.ref_s, ptr %84, i64 1
  store ptr %85, ptr @e_stack, align 8, !tbaa !33
  %86 = getelementptr inbounds %struct.ref_s, ptr %84, i64 1, i32 1
  store ptr @file_continue, ptr %86, align 8, !tbaa !9
  store i16 3968, ptr %85, align 8, !tbaa !10
  %87 = getelementptr inbounds %struct.ref_s, ptr %84, i64 1, i32 0, i32 1
  store i16 0, ptr %87, align 2, !tbaa !14
  %88 = getelementptr inbounds %struct.ref_s, ptr %84, i64 2
  store ptr %88, ptr @e_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) %58, i64 16, i1 false), !tbaa.struct !44
  br label %89

89:                                               ; preds = %81, %80, %74, %71, %37, %27, %23, %9, %5, %34, %16
  %90 = phi i32 [ %35, %34 ], [ %17, %16 ], [ %10, %9 ], [ -7, %5 ], [ %28, %27 ], [ -7, %23 ], [ -25, %37 ], [ 5, %71 ], [ -16, %80 ], [ 5, %81 ], [ -15, %74 ]
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal i32 @zrenamefile(ptr noundef %0) #1 {
  %2 = alloca %struct.parsed_file_name_s, align 8
  %3 = alloca %struct.parsed_file_name_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %5 = call i32 @parse_real_file_name(ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.22) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.parsed_file_name_s, ptr %3, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !18
  %9 = call i32 @parse_real_file_name(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.23) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !tbaa !15
  %13 = load ptr, ptr %3, align 8, !tbaa !15
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gx_io_device_s, ptr %12, i64 0, i32 2, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.parsed_file_name_s, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = load ptr, ptr %8, align 8, !tbaa !18
  %21 = call i32 %17(ptr noundef %12, ptr noundef %19, ptr noundef %20) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15, %11, %7
  %24 = phi i32 [ %9, %7 ], [ %9, %11 ], [ %21, %15 ]
  %25 = icmp sgt i32 %24, -1
  %26 = select i1 %25, i32 -9, i32 %24
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi i32 [ %26, %23 ], [ %21, %15 ]
  call void @free_file_name(ptr noundef nonnull %3, ptr noundef nonnull @.str.23) #12
  call void @free_file_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.22) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 -2
  store ptr %32, ptr @o_stack, align 8, !tbaa !33
  br label %33

33:                                               ; preds = %27, %1, %30
  %34 = phi i32 [ 0, %30 ], [ %5, %1 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @zstatus(ptr noundef %0) #1 {
  %2 = alloca %struct.parsed_file_name_s, align 8
  %3 = alloca %struct.stat, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !9
  switch i8 %5, label %61 [
    i8 3, label %6
    i8 18, label %18
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 17
  %10 = load i16, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 18
  %12 = load i16, ptr %11, align 2, !tbaa !32
  %13 = or i16 %12, %10
  %14 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !14
  %16 = icmp eq i16 %13, %15
  %17 = zext i1 %16 to i16
  store i16 %17, ptr %7, align 8, !tbaa !9
  store i16 256, ptr %0, align 8, !tbaa !10
  br label %63

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #12
  %19 = call i32 @parse_file_name(ptr noundef %0, ptr noundef nonnull %2) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %18
  %22 = call i32 @terminate_file_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.24) #12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.gx_io_device_s, ptr %25, i64 0, i32 2, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.parsed_file_name_s, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = call i32 %27(ptr noundef %25, ptr noundef %29, ptr noundef nonnull %3) #12
  switch i32 %30, label %57 [
    i32 0, label %31
    i32 -22, label %52
  ]

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %34 = icmp ugt ptr %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %59

36:                                               ; preds = %31
  store ptr %32, ptr @o_stack, align 8, !tbaa !33
  %37 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 10
  %38 = load i64, ptr %37, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i64 %38, ptr %39, align 8, !tbaa !9
  store i16 2816, ptr %0, align 8, !tbaa !10
  %40 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %41, ptr %43, align 8, !tbaa !9
  store i16 2816, ptr %42, align 8, !tbaa !10
  %44 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %45 = load i64, ptr %44, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %47 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 %45, ptr %47, align 8, !tbaa !9
  store i16 2816, ptr %46, align 8, !tbaa !10
  %48 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13
  %49 = load i64, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %51 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3, i32 1
  store i64 %49, ptr %51, align 8, !tbaa !9
  store i16 2816, ptr %50, align 8, !tbaa !10
  br label %52

52:                                               ; preds = %24, %36
  %53 = phi i64 [ 4, %36 ], [ 0, %24 ]
  %54 = phi i16 [ 1, %36 ], [ 0, %24 ]
  %55 = phi ptr [ %32, %36 ], [ %0, %24 ]
  %56 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %53, i32 1
  store i16 %54, ptr %56, align 8, !tbaa !9
  store i16 256, ptr %55, align 8, !tbaa !10
  br label %57

57:                                               ; preds = %52, %24
  %58 = phi i32 [ %30, %24 ], [ 0, %52 ]
  call void @free_file_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.24) #12
  br label %59

59:                                               ; preds = %21, %18, %57, %35
  %60 = phi i32 [ %58, %57 ], [ -16, %35 ], [ %19, %18 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %63

61:                                               ; preds = %1
  %62 = tail call i32 @check_type_failed(ptr noundef %0) #12
  br label %63

63:                                               ; preds = %61, %59, %6
  %64 = phi i32 [ %62, %61 ], [ %60, %59 ], [ 0, %6 ]
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @file_continue(ptr noundef %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -2
  %4 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !14
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call i32 @gp_enumerate_files_next(ptr noundef %5, ptr noundef %10, i32 noundef %8) #12
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -4
  store ptr %15, ptr @e_stack, align 8, !tbaa !33
  br label %31

16:                                               ; preds = %1
  %17 = icmp ugt i32 %11, %8
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %21 = icmp ugt ptr %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %31

23:                                               ; preds = %18
  store ptr %19, ptr @o_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !44
  %24 = trunc i32 %11 to i16
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 0, i32 1
  store i16 %24, ptr %25, align 2, !tbaa !14
  %26 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1
  store ptr %27, ptr @e_stack, align 8, !tbaa !33
  %28 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1, i32 1
  store ptr @file_continue, ptr %28, align 8, !tbaa !9
  store i16 3968, ptr %27, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1, i32 0, i32 1
  store i16 0, ptr %29, align 2, !tbaa !14
  %30 = getelementptr inbounds %struct.ref_s, ptr %26, i64 2
  store ptr %30, ptr @e_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !44
  br label %31

31:                                               ; preds = %16, %23, %22, %13
  %32 = phi i32 [ 14, %13 ], [ -16, %22 ], [ 5, %23 ], [ -15, %16 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execfile_finish(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %3 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 -2
  store ptr %11, ptr @e_stack, align 8, !tbaa !33
  %12 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  store ptr %12, ptr @o_stack, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !44
  %13 = tail call i32 @zclosefile(ptr noundef nonnull %12) #12
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i32 [ -16, %8 ], [ 14, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @zfile_init() #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !9
  %2 = tail call ptr @s_alloc(ptr noundef %1, ptr noundef nonnull @.str.25) #12
  tail call void @sread_string(ptr noundef %2, ptr noundef null, i32 noundef 0) #12
  %3 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 19
  %4 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 18
  store i16 0, ptr %4, align 2, !tbaa !32
  %5 = getelementptr inbounds %struct.stream_s, ptr %2, i64 0, i32 17
  store i16 0, ptr %5, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  store ptr %2, ptr @invalid_file_entry, align 8, !tbaa !5
  %6 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  tail call void %8(ptr noundef %6, ptr noundef nonnull @invalid_file_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @invalid_file_entry, ptr noundef nonnull @.str.26) #12
  store ptr null, ptr @file_list, align 8, !tbaa !5
  %9 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %9, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  tail call void %11(ptr noundef %9, ptr noundef nonnull @file_list_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @file_list, ptr noundef nonnull @.str.27) #12
  ret void
}

declare i32 @imemory_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @lib_fopen(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca [129 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr null, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 129, ptr nonnull %3) #12
  %4 = tail call ptr @gs_getiodevice(i32 noundef 0) #12
  %5 = call i32 @lib_file_fopen(ptr noundef %4, ptr noundef %0, ptr nonnull poison, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 129)
  %6 = icmp slt i32 %5, 0
  %7 = load ptr, ptr %2, align 8
  %8 = select i1 %6, ptr null, ptr %7
  call void @llvm.lifetime.end.p0(i64 129, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal i32 @lib_file_fopen(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
  %7 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #12
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @gs_main_instance_default() #12
  store i16 114, ptr %7, align 2
  %11 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @gp_fmode_binary_suffix) #12
  %12 = call i32 @gp_file_name_is_absolute(ptr noundef %1, i32 noundef %9) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.gs_main_instance_s, ptr %10, i64 0, i32 9, i32 1, i32 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !58
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gs_main_instance_s, ptr %10, i64 0, i32 9, i32 1, i32 1
  %20 = add i32 %9, 1
  %21 = icmp sgt i32 %9, -1
  %22 = getelementptr inbounds %struct.gx_io_device_s, ptr %0, i64 0, i32 2, i32 3
  %23 = icmp ne ptr %4, %1
  %24 = shl i64 %8, 32
  %25 = add i64 %24, 4294967296
  %26 = ashr exact i64 %25, 32
  br label %36

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.gx_io_device_s, ptr %0, i64 0, i32 2, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = call i32 %29(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4, i32 noundef %5) #12
  br label %87

31:                                               ; preds = %84
  %32 = add nuw nsw i64 %37, 1
  %33 = load i16, ptr %15, align 2, !tbaa !58
  %34 = zext i16 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %87, !llvm.loop !61

36:                                               ; preds = %18, %31
  %37 = phi i64 [ 0, %18 ], [ %32, %31 ]
  %38 = phi i32 [ undef, %18 ], [ %86, %31 ]
  %39 = load ptr, ptr %19, align 8, !tbaa !9
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 %37, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.ref_s, ptr %39, i64 %37, i32 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !14
  %44 = zext i16 %43 to i32
  %45 = call ptr @gp_file_name_concat_string(ptr noundef %41, i32 noundef %44, ptr noundef %1, i32 noundef %9) #12
  %46 = zext i16 %43 to i64
  %47 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #13
  %48 = add i64 %47, %46
  %49 = trunc i64 %48 to i32
  %50 = add i32 %20, %49
  %51 = icmp ugt i32 %50, %5
  br i1 %51, label %84, label %52

52:                                               ; preds = %36
  br i1 %21, label %53, label %64

53:                                               ; preds = %52
  %54 = shl i64 %48, 32
  %55 = ashr exact i64 %54, 32
  %56 = getelementptr i8, ptr %4, i64 %55
  br label %57

57:                                               ; preds = %53, %57
  %58 = phi i64 [ %26, %53 ], [ %59, %57 ]
  %59 = add nsw i64 %58, -1
  %60 = getelementptr inbounds i8, ptr %1, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = getelementptr i8, ptr %56, i64 %59
  store i8 %61, ptr %62, align 1, !tbaa !9
  %63 = icmp sgt i64 %58, 1
  br i1 %63, label %57, label %64, !llvm.loop !63

64:                                               ; preds = %57, %52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %41, i64 %46, i1 false)
  %65 = getelementptr inbounds i8, ptr %4, i64 %46
  %66 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %45, i64 %66, i1 false)
  %67 = load ptr, ptr %22, align 8, !tbaa !60
  %68 = call i32 %67(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4, i32 noundef %5) #12
  %69 = icmp sgt i32 %68, -1
  %70 = or i1 %69, %23
  %71 = xor i1 %69, true
  %72 = select i1 %69, i32 %68, i32 %38
  br i1 %70, label %84, label %73

73:                                               ; preds = %64
  %74 = shl i64 %48, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr i8, ptr %4, i64 %75
  br label %77

77:                                               ; preds = %73, %77
  %78 = phi i64 [ 0, %73 ], [ %83, %77 ]
  %79 = getelementptr i8, ptr %76, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !9
  %81 = getelementptr inbounds i8, ptr %4, i64 %78
  store i8 %80, ptr %81, align 1, !tbaa !9
  %82 = icmp eq i8 %80, 0
  %83 = add nuw i64 %78, 1
  br i1 %82, label %84, label %77, !llvm.loop !64

84:                                               ; preds = %77, %64, %36
  %85 = phi i1 [ false, %36 ], [ %71, %64 ], [ true, %77 ]
  %86 = phi i32 [ -13, %36 ], [ %72, %64 ], [ %38, %77 ]
  br i1 %85, label %31, label %87

87:                                               ; preds = %84, %31, %14, %27
  %88 = phi i32 [ %30, %27 ], [ -22, %14 ], [ -22, %31 ], [ %86, %84 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #12
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define dso_local i32 @file_open_stream(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #1 {
  %7 = alloca [4 x i8], align 1
  %8 = alloca ptr, align 8
  %9 = icmp eq i32 %3, 0
  %10 = select i1 %9, i32 512, i32 %3
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %102

12:                                               ; preds = %6
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %14 = load ptr, ptr @file_list, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %12, %35
  %17 = phi ptr [ %37, %35 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 21
  %19 = load i32, ptr %18, align 8, !tbaa !65
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !66
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 17
  %27 = load i16, ptr %26, align 8, !tbaa !31
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = icmp eq ptr %31, %13
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 14
  store i32 0, ptr %34, align 8, !tbaa !67
  br label %54

35:                                               ; preds = %29, %25, %21
  %36 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %16, !llvm.loop !68

39:                                               ; preds = %35, %16, %12
  %40 = tail call ptr @s_alloc(ptr noundef %13, ptr noundef nonnull @.str.15) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 18
  store i16 1, ptr %43, align 2, !tbaa !32
  %44 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 17
  store i16 1, ptr %44, align 8, !tbaa !31
  %45 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 14
  store i32 0, ptr %45, align 8, !tbaa !67
  tail call void @s_disable(ptr noundef nonnull %40) #12
  %46 = load ptr, ptr @file_list, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.stream_s, ptr %46, i64 0, i32 19
  store ptr %40, ptr %49, align 8, !tbaa !69
  br label %50

50:                                               ; preds = %48, %42
  %51 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 20
  store ptr %46, ptr %51, align 8, !tbaa !70
  %52 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 19
  store ptr null, ptr %52, align 8, !tbaa !69
  %53 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 21
  store i32 0, ptr %53, align 8, !tbaa !65
  store ptr %40, ptr @file_list, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %33, %39, %50
  %55 = phi ptr [ %17, %33 ], [ %40, %50 ], [ null, %39 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %102, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = tail call ptr %59(ptr noundef nonnull %58, i32 noundef %10, ptr noundef nonnull @.str.16) #12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %102, label %62

62:                                               ; preds = %57
  %63 = icmp eq ptr %0, null
  br i1 %63, label %97, label %64

64:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %65 = zext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %60, ptr nonnull align 1 %0, i64 %65, i1 false)
  %66 = getelementptr inbounds i8, ptr %60, i64 %65
  store i8 0, ptr %66, align 1, !tbaa !9
  %67 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %2) #12
  %68 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @gp_fmode_binary_suffix) #12
  %69 = call ptr @gs_getiodevice(i32 noundef 0) #12
  %70 = call i32 %5(ptr noundef %69, ptr noundef nonnull %60, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %60, i32 noundef %10) #12
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %74 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %73, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  call void %75(ptr noundef %73, ptr noundef nonnull %60, ptr noundef nonnull @.str.16) #12
  br label %96

76:                                               ; preds = %64
  %77 = load i8, ptr %7, align 1, !tbaa !9
  switch i8 %77, label %84 [
    i8 97, label %78
    i8 114, label %80
    i8 119, label %82
  ]

78:                                               ; preds = %76
  %79 = load ptr, ptr %8, align 8, !tbaa !5
  call void @sappend_file(ptr noundef nonnull %55, ptr noundef %79, ptr noundef nonnull %60, i32 noundef %10) #12
  br label %84

80:                                               ; preds = %76
  %81 = load ptr, ptr %8, align 8, !tbaa !5
  call void @sread_file(ptr noundef nonnull %55, ptr noundef %81, ptr noundef nonnull %60, i32 noundef %10) #12
  br label %84

82:                                               ; preds = %76
  %83 = load ptr, ptr %8, align 8, !tbaa !5
  call void @swrite_file(ptr noundef nonnull %55, ptr noundef %83, ptr noundef nonnull %60, i32 noundef %10) #12
  br label %84

84:                                               ; preds = %82, %76, %80, %78
  %85 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = icmp eq i8 %86, 43
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.stream_s, ptr %55, i64 0, i32 23
  %90 = load i32, ptr %89, align 8, !tbaa !73
  %91 = or i32 %90, 3
  store i32 %91, ptr %89, align 8, !tbaa !73
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.stream_s, ptr %55, i64 0, i32 12, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !74
  %95 = getelementptr inbounds %struct.stream_s, ptr %55, i64 0, i32 24
  store ptr %94, ptr %95, align 8, !tbaa !75
  store ptr @file_close_file, ptr %93, align 8, !tbaa !74
  br label %96

96:                                               ; preds = %92, %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br i1 %71, label %101, label %102

97:                                               ; preds = %62
  %98 = getelementptr inbounds %struct.stream_s, ptr %55, i64 0, i32 4
  store ptr %60, ptr %98, align 8, !tbaa !37
  %99 = getelementptr inbounds %struct.stream_s, ptr %55, i64 0, i32 6
  store i32 %10, ptr %99, align 4, !tbaa !76
  %100 = getelementptr inbounds %struct.stream_s, ptr %55, i64 0, i32 5
  store i32 %10, ptr %100, align 8, !tbaa !77
  br label %101

101:                                              ; preds = %96, %97
  store ptr %55, ptr %4, align 8, !tbaa !5
  br label %102

102:                                              ; preds = %57, %54, %6, %96, %101
  %103 = phi i32 [ 0, %101 ], [ %70, %96 ], [ -13, %6 ], [ -25, %54 ], [ -25, %57 ]
  ret i32 %103
}

declare i32 @sclose(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @file_read_string(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %5 = load ptr, ptr @file_list, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3, %26
  %8 = phi ptr [ %28, %26 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 21
  %10 = load i32, ptr %9, align 8, !tbaa !65
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !66
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 17
  %18 = load i16, ptr %17, align 8, !tbaa !31
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 14
  store i32 0, ptr %25, align 8, !tbaa !67
  br label %45

26:                                               ; preds = %20, %16, %12
  %27 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !68

30:                                               ; preds = %26, %7, %3
  %31 = tail call ptr @s_alloc(ptr noundef %4, ptr noundef nonnull @.str.14) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 18
  store i16 1, ptr %34, align 2, !tbaa !32
  %35 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 17
  store i16 1, ptr %35, align 8, !tbaa !31
  %36 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 14
  store i32 0, ptr %36, align 8, !tbaa !67
  tail call void @s_disable(ptr noundef nonnull %31) #12
  %37 = load ptr, ptr @file_list, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.stream_s, ptr %37, i64 0, i32 19
  store ptr %31, ptr %40, align 8, !tbaa !69
  br label %41

41:                                               ; preds = %39, %33
  %42 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 20
  store ptr %37, ptr %42, align 8, !tbaa !70
  %43 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 19
  store ptr null, ptr %43, align 8, !tbaa !69
  %44 = getelementptr inbounds %struct.stream_s, ptr %31, i64 0, i32 21
  store i32 0, ptr %44, align 8, !tbaa !65
  store ptr %31, ptr @file_list, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %24, %30, %41
  %46 = phi ptr [ %8, %24 ], [ %31, %41 ], [ null, %30 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !41
  tail call void @sread_string(ptr noundef nonnull %46, ptr noundef %0, i32 noundef %1) #12
  %50 = getelementptr inbounds %struct.stream_s, ptr %46, i64 0, i32 8
  store i8 1, ptr %50, align 2, !tbaa !78
  %51 = getelementptr inbounds %struct.stream_s, ptr %46, i64 0, i32 18
  store i16 0, ptr %51, align 2, !tbaa !32
  %52 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store ptr %46, ptr %52, align 8, !tbaa !9
  %53 = trunc i32 %49 to i16
  %54 = or i16 %53, 96
  %55 = add i16 %54, 768
  store i16 %55, ptr %2, align 8, !tbaa !10
  %56 = getelementptr inbounds %struct.stream_s, ptr %46, i64 0, i32 17
  %57 = load i16, ptr %56, align 8, !tbaa !31
  %58 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  store i16 %57, ptr %58, align 2, !tbaa !14
  %59 = getelementptr inbounds %struct.stream_s, ptr %46, i64 0, i32 12, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !74
  %61 = getelementptr inbounds %struct.stream_s, ptr %46, i64 0, i32 24
  store ptr %60, ptr %61, align 8, !tbaa !75
  store ptr @file_close_disable, ptr %59, align 8, !tbaa !74
  br label %62

62:                                               ; preds = %45, %48
  %63 = phi i32 [ 0, %48 ], [ -25, %45 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local ptr @file_alloc_stream(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @file_list, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2, %24
  %6 = phi ptr [ %26, %24 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 21
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 9
  %12 = load i8, ptr %11, align 1, !tbaa !66
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 17
  %16 = load i16, ptr %15, align 8, !tbaa !31
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !26
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 14
  store i32 0, ptr %23, align 8, !tbaa !67
  br label %43

24:                                               ; preds = %18, %14, %10
  %25 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %5, !llvm.loop !68

28:                                               ; preds = %5, %24, %2
  %29 = tail call ptr @s_alloc(ptr noundef %0, ptr noundef %1) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.stream_s, ptr %29, i64 0, i32 18
  store i16 1, ptr %32, align 2, !tbaa !32
  %33 = getelementptr inbounds %struct.stream_s, ptr %29, i64 0, i32 17
  store i16 1, ptr %33, align 8, !tbaa !31
  %34 = getelementptr inbounds %struct.stream_s, ptr %29, i64 0, i32 14
  store i32 0, ptr %34, align 8, !tbaa !67
  tail call void @s_disable(ptr noundef nonnull %29) #12
  %35 = load ptr, ptr @file_list, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.stream_s, ptr %35, i64 0, i32 19
  store ptr %29, ptr %38, align 8, !tbaa !69
  br label %39

39:                                               ; preds = %37, %31
  %40 = getelementptr inbounds %struct.stream_s, ptr %29, i64 0, i32 20
  store ptr %35, ptr %40, align 8, !tbaa !70
  %41 = getelementptr inbounds %struct.stream_s, ptr %29, i64 0, i32 19
  store ptr null, ptr %41, align 8, !tbaa !69
  %42 = getelementptr inbounds %struct.stream_s, ptr %29, i64 0, i32 21
  store i32 0, ptr %42, align 8, !tbaa !65
  store ptr %29, ptr @file_list, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %28, %39, %22
  %44 = phi ptr [ %6, %22 ], [ %29, %39 ], [ null, %28 ]
  ret ptr %44
}

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @file_close_disable(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call i32 %3(ptr noundef %0) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 17
  %8 = load i16, ptr %7, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 18
  %10 = load i16, ptr %9, align 2, !tbaa !32
  %11 = or i16 %10, %8
  %12 = add i16 %11, 1
  store i16 %12, ptr %9, align 2, !tbaa !32
  store i16 %12, ptr %7, align 8, !tbaa !31
  br label %13

13:                                               ; preds = %1, %6
  %14 = phi i32 [ 0, %6 ], [ %4, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

declare void @sappend_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sread_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @swrite_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @file_close_file(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = tail call i32 %5(ptr noundef %0) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 17
  %10 = load i16, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 18
  %12 = load i16, ptr %11, align 2, !tbaa !32
  %13 = or i16 %12, %10
  %14 = add i16 %13, 1
  store i16 %14, ptr %11, align 2, !tbaa !32
  store i16 %14, ptr %9, align 8, !tbaa !31
  br label %15

15:                                               ; preds = %1, %8
  %16 = phi i32 [ 0, %8 ], [ %6, %1 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = icmp eq ptr %3, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %18, %36
  %21 = phi ptr [ %27, %36 ], [ %3, %18 ]
  %22 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp sgt i32 %23, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %31, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !37
  tail call void %33(ptr noundef %31, ptr noundef %35, ptr noundef nonnull @.str.19) #12
  br label %36

36:                                               ; preds = %29, %25
  tail call void @s_disable(ptr noundef nonnull %21) #12
  %37 = icmp eq ptr %27, null
  br i1 %37, label %38, label %20, !llvm.loop !80

38:                                               ; preds = %20, %36, %18
  %39 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %40, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !37
  tail call void %42(ptr noundef %40, ptr noundef %44, ptr noundef nonnull @.str.20) #12
  br label %45

45:                                               ; preds = %15, %38
  %46 = phi i32 [ 0, %38 ], [ %16, %15 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define dso_local i32 @filter_open(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5) local_unnamed_addr #1 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %8 = load ptr, ptr %4, align 8, !tbaa !81
  %9 = tail call i32 @gs_struct_type_size(ptr noundef %8) #12
  %10 = load ptr, ptr %4, align 8, !tbaa !81
  %11 = icmp eq ptr %10, @st_stream_state
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %14 = tail call ptr @s_alloc_state(ptr noundef %13, ptr noundef %10, ptr noundef nonnull @.str.17) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %93, label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %14, %12 ], [ null, %6 ]
  %18 = call i32 @file_open_stream(ptr noundef null, i32 noundef 0, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, ptr noundef null)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %21, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  tail call void %23(ptr noundef %21, ptr noundef %17, ptr noundef nonnull @.str.17) #12
  br label %93

24:                                               ; preds = %16
  %25 = load ptr, ptr %7, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.stream_s, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = getelementptr inbounds %struct.stream_s, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !77
  %30 = load i8, ptr %0, align 1, !tbaa !9
  %31 = icmp eq i8 %30, 114
  %32 = select i1 %31, i32 1, i32 2
  tail call void @s_std_init(ptr noundef %25, ptr noundef %27, i32 noundef %29, ptr noundef %3, i32 noundef %32) #12
  %33 = getelementptr inbounds %struct.stream_template_s, ptr %4, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  %35 = getelementptr inbounds %struct.stream_s, ptr %25, i64 0, i32 12, i32 5
  store ptr %34, ptr %35, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.stream_s, ptr %25, i64 0, i32 12, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  %38 = getelementptr inbounds %struct.stream_s, ptr %25, i64 0, i32 24
  store ptr %37, ptr %38, align 8, !tbaa !75
  store ptr @file_close_file, ptr %36, align 8, !tbaa !74
  %39 = icmp eq ptr %17, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %24
  %41 = icmp eq ptr %5, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = zext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %17, ptr nonnull align 8 %5, i64 %43, i1 false)
  br label %44

44:                                               ; preds = %24, %40, %42
  %45 = phi ptr [ %17, %42 ], [ %17, %40 ], [ %25, %24 ]
  %46 = getelementptr inbounds %struct.stream_s, ptr %25, i64 0, i32 16
  store ptr %45, ptr %46, align 8, !tbaa !85
  store ptr %4, ptr %45, align 8, !tbaa !86
  %47 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.stream_state_s, ptr %45, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.stream_state_s, ptr %45, i64 0, i32 2
  store ptr @filter_report_error, ptr %49, align 8, !tbaa !89
  %50 = getelementptr inbounds %struct.stream_template_s, ptr %4, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !90
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %44
  %54 = tail call i32 %51(ptr noundef nonnull %45) #12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %57, i64 0, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !72
  tail call void %59(ptr noundef %57, ptr noundef nonnull %45, ptr noundef nonnull @.str.17) #12
  %60 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %61 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %60, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  %63 = load ptr, ptr %7, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.stream_s, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !37
  tail call void %62(ptr noundef %60, ptr noundef %65, ptr noundef nonnull @.str.18) #12
  br label %93

66:                                               ; preds = %53, %44
  %67 = load ptr, ptr %7, align 8, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %0, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = icmp eq i8 %69, 43
  %71 = select i1 %70, i32 112, i32 0
  %72 = getelementptr inbounds %struct.stream_s, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !26
  %74 = tail call i32 @imemory_space(ptr noundef %73) #12
  %75 = or i32 %71, %74
  %76 = load i8, ptr %0, align 1, !tbaa !9
  %77 = icmp eq i8 %76, 114
  %78 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store ptr %67, ptr %78, align 8, !tbaa !9
  %79 = trunc i32 %75 to i16
  %80 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  br i1 %77, label %81, label %87

81:                                               ; preds = %66
  %82 = or i16 %79, 96
  %83 = add i16 %82, 768
  store i16 %83, ptr %2, align 8, !tbaa !10
  %84 = getelementptr inbounds %struct.stream_s, ptr %67, i64 0, i32 17
  %85 = load i16, ptr %84, align 8, !tbaa !31
  store i16 %85, ptr %80, align 2, !tbaa !14
  %86 = getelementptr inbounds %struct.stream_s, ptr %67, i64 0, i32 18
  store i16 0, ptr %86, align 2, !tbaa !32
  br label %93

87:                                               ; preds = %66
  %88 = or i16 %79, 16
  %89 = add i16 %88, 768
  store i16 %89, ptr %2, align 8, !tbaa !10
  %90 = getelementptr inbounds %struct.stream_s, ptr %67, i64 0, i32 18
  %91 = load i16, ptr %90, align 2, !tbaa !32
  store i16 %91, ptr %80, align 2, !tbaa !14
  %92 = getelementptr inbounds %struct.stream_s, ptr %67, i64 0, i32 17
  store i16 0, ptr %92, align 8, !tbaa !31
  br label %93

93:                                               ; preds = %87, %81, %12, %56, %20
  %94 = phi i32 [ %18, %20 ], [ %54, %56 ], [ -25, %12 ], [ 0, %81 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret i32 %94
}

declare i32 @gs_struct_type_size(ptr noundef) local_unnamed_addr #3

declare ptr @s_alloc_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @s_std_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @filter_report_error(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = tail call i32 @gs_errorinfo_put_string(ptr noundef %1) #12
  ret i32 %3
}

declare ptr @s_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @s_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @file_close_finish(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @file_close(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 17
  %5 = load i16, ptr %4, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 18
  %7 = load i16, ptr %6, align 2, !tbaa !32
  %8 = or i16 %7, %5
  %9 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !14
  %11 = icmp eq i16 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = tail call i32 @sclose(ptr noundef %3) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %12, %15
  %17 = phi i32 [ 0, %15 ], [ -12, %12 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @file_save() local_unnamed_addr #9 {
  %1 = load ptr, ptr @file_list, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !65
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @file_restore(ptr nocapture noundef readnone %0, ptr noundef readnone %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @file_list, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2, %22
  %6 = phi ptr [ %25, %22 ], [ %3, %2 ]
  %7 = phi ptr [ %24, %22 ], [ @file_list, %2 ]
  %8 = phi ptr [ %23, %22 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 21
  %10 = load i32, ptr %9, align 8, !tbaa !65
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = icmp eq ptr %14, %1
  %16 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 20
  br i1 %15, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %16, align 8, !tbaa !70
  store ptr %18, ptr %7, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.stream_s, ptr %18, i64 0, i32 19
  store ptr %8, ptr %21, align 8, !tbaa !69
  br label %22

22:                                               ; preds = %12, %17, %20
  %23 = phi ptr [ %8, %20 ], [ %8, %17 ], [ %6, %12 ]
  %24 = phi ptr [ %7, %20 ], [ %7, %17 ], [ %16, %12 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %5, !llvm.loop !91

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 21
  %29 = add nsw i32 %10, -1
  store i32 %29, ptr %28, align 8, !tbaa !65
  br label %30

30:                                               ; preds = %22, %2, %27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @file_forget_save(ptr nocapture noundef readnone %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr @file_list, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 21
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %4, !llvm.loop !92

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 21
  %15 = add nsw i32 %7, -1
  store i32 %15, ptr %14, align 8, !tbaa !65
  br label %16

16:                                               ; preds = %9, %1, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @file_gc_prepare() local_unnamed_addr #10 {
  %1 = load ptr, ptr @file_list, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 19
  %8 = icmp eq ptr %6, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %8, label %9, label %3, !llvm.loop !93

9:                                                ; preds = %3
  store ptr %6, ptr @file_list, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

declare i32 @parse_real_file_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_file_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @execfile_cleanup(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %3 = load ptr, ptr @o_stack, align 8, !tbaa !33
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 16
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  store ptr %10, ptr @o_stack, align 8, !tbaa !33
  %11 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !44
  %13 = tail call i32 @zclosefile(ptr noundef nonnull %10) #12
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i32 [ -16, %8 ], [ %13, %9 ]
  ret i32 %15
}

declare i32 @zexec(ptr noundef) local_unnamed_addr #3

declare i32 @zclosefile(ptr noundef) local_unnamed_addr #3

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #3

declare ptr @gp_enumerate_files_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @file_cleanup(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !33
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 4, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  tail call void @gp_enumerate_files_close(ptr noundef %4) #12
  ret i32 0
}

declare void @gp_enumerate_files_close(ptr noundef) local_unnamed_addr #3

declare i32 @terminate_file_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gp_enumerate_files_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gs_main_instance_default() local_unnamed_addr #3

declare i32 @gp_file_name_is_absolute(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_errorinfo_put_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !13, i64 0}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = !{!11, !13, i64 2}
!15 = !{!16, !6, i64 0}
!16 = !{!"parsed_file_name_s", !6, i64 0, !6, i64 8, !17, i64 16}
!17 = !{!"int", !7, i64 0}
!18 = !{!16, !6, i64 8}
!19 = !{!20, !6, i64 24}
!20 = !{!"gx_io_device_s", !6, i64 0, !6, i64 8, !21, i64 16}
!21 = !{!"gx_io_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!22 = !{!23, !6, i64 0}
!23 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !17, i64 40, !17, i64 44, !6, i64 48, !17, i64 56, !17, i64 60}
!24 = !{!20, !6, i64 32}
!25 = !{!16, !17, i64 16}
!26 = !{!27, !6, i64 8}
!27 = !{!"stream_s", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !6, i64 48, !17, i64 56, !17, i64 60, !13, i64 64, !7, i64 66, !7, i64 67, !28, i64 72, !29, i64 88, !30, i64 96, !6, i64 152, !17, i64 160, !17, i64 164, !6, i64 168, !13, i64 176, !13, i64 178, !6, i64 184, !6, i64 192, !17, i64 200, !6, i64 208, !17, i64 216, !6, i64 224}
!28 = !{!"gs_string_s", !6, i64 0, !17, i64 8}
!29 = !{!"long", !7, i64 0}
!30 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!31 = !{!27, !13, i64 176}
!32 = !{!27, !13, i64 178}
!33 = !{!34, !6, i64 0}
!34 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !17, i64 40, !17, i64 44, !11, i64 48, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !11, i64 88, !17, i64 104, !17, i64 108, !17, i64 112, !6, i64 120}
!35 = !{!34, !6, i64 16}
!36 = !{!34, !17, i64 64}
!37 = !{!27, !6, i64 48}
!38 = !{!39, !6, i64 96}
!39 = !{!"gs_memory_s", !40, i64 0}
!40 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!41 = !{!23, !17, i64 40}
!42 = !{!17, !17, i64 0}
!43 = !{!20, !6, i64 56}
!44 = !{i64 0, i64 2, !45, i64 2, i64 2, !45, i64 8, i64 8, !46, i64 8, i64 2, !45, i64 8, i64 4, !47, i64 8, i64 8, !46, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!45 = !{!13, !13, i64 0}
!46 = !{!29, !29, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !7, i64 0}
!49 = !{!20, !6, i64 64}
!50 = !{!20, !6, i64 72}
!51 = !{!52, !29, i64 64}
!52 = !{!"stat", !29, i64 0, !29, i64 8, !29, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !53, i64 72, !53, i64 88, !53, i64 104, !7, i64 120}
!53 = !{!"timespec", !29, i64 0, !29, i64 8}
!54 = !{!52, !29, i64 48}
!55 = !{!52, !29, i64 88}
!56 = !{!52, !29, i64 104}
!57 = !{!39, !6, i64 128}
!58 = !{!59, !13, i64 18}
!59 = !{!"gs_file_path_s", !11, i64 0, !11, i64 16, !6, i64 32, !6, i64 40, !17, i64 48}
!60 = !{!20, !6, i64 40}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = !{!27, !17, i64 200}
!66 = !{!27, !7, i64 67}
!67 = !{!27, !17, i64 160}
!68 = distinct !{!68, !62}
!69 = !{!27, !6, i64 184}
!70 = !{!27, !6, i64 192}
!71 = !{!39, !6, i64 0}
!72 = !{!39, !6, i64 88}
!73 = !{!27, !17, i64 216}
!74 = !{!27, !6, i64 128}
!75 = !{!27, !6, i64 224}
!76 = !{!27, !17, i64 60}
!77 = !{!27, !17, i64 56}
!78 = !{!27, !7, i64 66}
!79 = !{!27, !6, i64 152}
!80 = distinct !{!80, !62}
!81 = !{!82, !6, i64 0}
!82 = !{!"stream_template_s", !6, i64 0, !6, i64 8, !6, i64 16, !17, i64 24, !17, i64 28, !6, i64 32, !6, i64 40, !6, i64 48}
!83 = !{!82, !6, i64 16}
!84 = !{!27, !6, i64 136}
!85 = !{!27, !6, i64 168}
!86 = !{!87, !6, i64 0}
!87 = !{!"stream_state_s", !6, i64 0, !6, i64 8, !6, i64 16}
!88 = !{!87, !6, i64 8}
!89 = !{!87, !6, i64 16}
!90 = !{!82, !6, i64 8}
!91 = distinct !{!91, !62}
!92 = distinct !{!92, !62}
!93 = distinct !{!93, !62}
