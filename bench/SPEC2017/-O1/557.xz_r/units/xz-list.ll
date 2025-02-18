; ModuleID = 'xz/list.c'
source_filename = "xz/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xz_file_info = type { ptr, i64, i64, i8 }
%struct.lzma_index_iter = type { %struct.anon.0, %struct.anon.1, [6 x %union.anon] }
%struct.anon.0 = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.1 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.block_header_info = type { i32, [3 x i8], i64, i64, [512 x i8] }
%union.io_buf = type { [1024 x i64] }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.file_pair = type { ptr, ptr, i32, i32, i8, i8, i64 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@opt_robot = external local_unnamed_addr global i8, align 1
@totals.0 = internal unnamed_addr global i64 0, align 8
@totals.1 = internal unnamed_addr global i64 0, align 8
@totals.2 = internal unnamed_addr global i64 0, align 8
@totals.3 = internal unnamed_addr global i64 0, align 8
@totals.4 = internal unnamed_addr global i64 0, align 8
@totals.5 = internal unnamed_addr global i64 0, align 8
@totals.6 = internal unnamed_addr global i64 0, align 8
@totals.7 = internal unnamed_addr global i32 0, align 8
@totals.8 = internal unnamed_addr global i8 1, align 4
@opt_format = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [62 x i8] c"--list works only on .xz files (--format=xz or --format=auto)\00", align 1
@stdin_filename = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"--list does not support reading from standard input\00", align 1
@opt_stdout = external local_unnamed_addr global i8, align 1
@opt_force = external local_unnamed_addr global i8, align 1
@__const.list_file.xfi = private unnamed_addr constant %struct.xz_file_info { ptr null, i64 0, i64 0, i8 1 }, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"totals\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\09%lu\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09%lu\09%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@check_names = internal constant [16 x [12 x i8]] [[12 x i8] c"None\00\00\00\00\00\00\00\00", [12 x i8] c"CRC32\00\00\00\00\00\00\00", [12 x i8] c"Unknown-2\00\00\00", [12 x i8] c"Unknown-3\00\00\00", [12 x i8] c"CRC64\00\00\00\00\00\00\00", [12 x i8] c"Unknown-5\00\00\00", [12 x i8] c"Unknown-6\00\00\00", [12 x i8] c"Unknown-7\00\00\00", [12 x i8] c"Unknown-8\00\00\00", [12 x i8] c"Unknown-9\00\00\00", [12 x i8] c"SHA-256\00\00\00\00\00", [12 x i8] c"Unknown-11\00\00", [12 x i8] c"Unknown-12\00\00", [12 x i8] c"Unknown-13\00\00", [12 x i8] c"Unknown-14\00\00", [12 x i8] c"Unknown-15\00\00"], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@get_ratio.buf = internal global [16 x i8] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"%5s %7s  %11s  %11s  %5s  %-7s \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%s file\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s files\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Totals:\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"  Number of files:    %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"  Memory needed:      %s MiB\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"  Sizes in headers:   %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"  Streams:            %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"  Blocks:             %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"  Compressed size:    %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"  Uncompressed size:  %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"  Ratio:              %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"  Check:              %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"  Stream padding:     %s\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"name\09%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"file\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"stream\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"block\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%s\09%s\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"\09%s\09%u\09%s\09%lu\09%lu\09%s\00", align 1
@check_value = internal global [129 x i8] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [16 x i8] c"summary\09%lu\09%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"%016lx\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@print_info_basic.headings_displayed = internal unnamed_addr global i1 false, align 1
@.str.38 = private unnamed_addr constant [65 x i8] c"Strms  Blocks   Compressed Uncompressed  Ratio  Check   Filename\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"%*s %*s  %*s  %*s  %*s  %-*s %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [123 x i8] c"  Streams:\0A    Stream    Blocks      CompOffset    UncompOffset        CompSize      UncompSize  Ratio  Check      Padding\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"    %*s %*s %*s %*s \00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"%*s %*s  %*s  %-*s %*s\0A\00", align 1
@.str.43 = private unnamed_addr constant [109 x i8] c"  Blocks:\0A    Stream     Block      CompOffset    UncompOffset       TotalSize      UncompSize  Ratio  Check\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"      CheckVal %*s Header  Flags        CompSize    MemUsage  Filters\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"%*s %*s  %*s  %-*s\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"%-*s  %*s  %-5s %*s %*s MiB  %s\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @list_totals() local_unnamed_addr #0 !prof !34 {
  %1 = alloca [80 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  %4 = load i8, ptr @opt_robot, align 1, !tbaa !35, !range !39, !noundef !40
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #8
  %7 = load i32, ptr @totals.7, align 8, !tbaa !41
  call fastcc void @get_check_names(ptr noundef nonnull %3, i32 noundef %7, i1 noundef zeroext false)
  %8 = load i64, ptr @totals.1, align 8, !tbaa !45
  %9 = load i64, ptr @totals.2, align 8, !tbaa !46
  %10 = load i64, ptr @totals.3, align 8, !tbaa !47
  %11 = load i64, ptr @totals.4, align 8, !tbaa !48
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = uitofp i64 %10 to double
  %15 = uitofp i64 %11 to double
  %16 = fdiv double %14, %15
  %17 = fcmp ogt double %16, 9.999000e+00
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %16) #8
  br label %20

20:                                               ; preds = %18, %13, %6
  %21 = phi ptr [ @.str.10, %6 ], [ @get_ratio.buf, %18 ], [ @.str.10, %13 ]
  %22 = load i64, ptr @totals.5, align 8, !tbaa !49
  %23 = load i64, ptr @totals.0, align 8, !tbaa !50
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef nonnull %21, ptr noundef nonnull %3, i64 noundef %22, i64 noundef %23)
  %25 = call i32 @message_verbosity_get() #8
  %26 = icmp ugt i32 %25, 3
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i64, ptr @totals.6, align 8, !tbaa !51
  %29 = load i8, ptr @totals.8, align 4, !tbaa !52, !range !39, !noundef !40
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, ptr @.str.5, ptr @.str.4
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %28, ptr noundef nonnull %31)
  br label %33

33:                                               ; preds = %20, %27
  %34 = load ptr, ptr @stdout, align 8, !tbaa !53
  %35 = call i32 @putc(i32 noundef 10, ptr noundef %34)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #8
  br label %96

36:                                               ; preds = %0
  %37 = load i64, ptr @totals.0, align 8, !tbaa !50
  %38 = icmp ugt i64 %37, 1
  br i1 %38, label %39, label %96

39:                                               ; preds = %36
  %40 = tail call i32 @message_verbosity_get() #8
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %1, i8 45, i64 80, i1 false)
  %43 = getelementptr inbounds [80 x i8], ptr %1, i64 0, i64 79
  store i8 0, ptr %43, align 1, !tbaa !55
  %44 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %1)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #8
  %45 = load i32, ptr @totals.7, align 8, !tbaa !41
  call fastcc void @get_check_names(ptr noundef nonnull %2, i32 noundef %45, i1 noundef zeroext false)
  %46 = load i64, ptr @totals.1, align 8, !tbaa !45
  %47 = call ptr @uint64_to_str(i64 noundef %46, i32 noundef 0) #8
  %48 = load i64, ptr @totals.2, align 8, !tbaa !46
  %49 = call ptr @uint64_to_str(i64 noundef %48, i32 noundef 1) #8
  %50 = load i64, ptr @totals.3, align 8, !tbaa !47
  %51 = call ptr @uint64_to_nicestr(i64 noundef %50, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #8
  %52 = load i64, ptr @totals.4, align 8, !tbaa !48
  %53 = call ptr @uint64_to_nicestr(i64 noundef %52, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #8
  %54 = load i64, ptr @totals.4, align 8, !tbaa !48
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %42
  %57 = load i64, ptr @totals.3, align 8, !tbaa !47
  %58 = uitofp i64 %57 to double
  %59 = uitofp i64 %54 to double
  %60 = fdiv double %58, %59
  %61 = fcmp ogt double %60, 9.999000e+00
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %60) #8
  br label %64

64:                                               ; preds = %42, %56, %62
  %65 = phi ptr [ @.str.10, %42 ], [ @get_ratio.buf, %62 ], [ @.str.10, %56 ]
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %47, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef nonnull %65, ptr noundef nonnull %2)
  %67 = load i64, ptr @totals.0, align 8, !tbaa !50
  %68 = icmp eq i64 %67, 1
  %69 = select i1 %68, ptr @.str.13, ptr @.str.14
  %70 = call ptr @uint64_to_str(i64 noundef %67, i32 noundef 0) #8
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %69, ptr noundef %70)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %1) #8
  br label %96

72:                                               ; preds = %39
  %73 = load ptr, ptr @stdout, align 8, !tbaa !53
  %74 = tail call i32 @putc(i32 noundef 10, ptr noundef %73)
  %75 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.15)
  %76 = load i64, ptr @totals.0, align 8, !tbaa !50
  %77 = tail call ptr @uint64_to_str(i64 noundef %76, i32 noundef 0) #8
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %77)
  %79 = load i64, ptr @totals.1, align 8, !tbaa !45
  %80 = load i64, ptr @totals.2, align 8, !tbaa !46
  %81 = load i64, ptr @totals.3, align 8, !tbaa !47
  %82 = load i64, ptr @totals.4, align 8, !tbaa !48
  %83 = load i32, ptr @totals.7, align 8, !tbaa !41
  %84 = load i64, ptr @totals.5, align 8, !tbaa !49
  tail call fastcc void @print_adv_helper(i64 noundef %79, i64 noundef %80, i64 noundef %81, i64 noundef %82, i32 noundef %83, i64 noundef %84)
  %85 = tail call i32 @message_verbosity_get() #8
  %86 = icmp ugt i32 %85, 3
  br i1 %86, label %87, label %96

87:                                               ; preds = %72
  %88 = load i64, ptr @totals.6, align 8, !tbaa !51
  %89 = tail call i64 @round_up_to_mib(i64 noundef %88) #8
  %90 = tail call ptr @uint64_to_str(i64 noundef %89, i32 noundef 0) #8
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %90)
  %92 = load i8, ptr @totals.8, align 4, !tbaa !52, !range !39, !noundef !40
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, ptr @.str.20, ptr @.str.19
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %94)
  br label %96

96:                                               ; preds = %87, %72, %36, %64, %33
  ret void
}

declare i32 @message_verbosity_get() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @list_file(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.lzma_index_iter, align 8
  %3 = alloca %struct.block_header_info, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.lzma_index_iter, align 8
  %7 = alloca %struct.block_header_info, align 8
  %8 = alloca %union.io_buf, align 8
  %9 = alloca %struct.lzma_stream_flags, align 8
  %10 = alloca %struct.lzma_stream_flags, align 8
  %11 = alloca %struct.lzma_stream, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.xz_file_info, align 8
  %14 = load i32, ptr @opt_format, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #8
  br label %17

17:                                               ; preds = %16, %1
  tail call void @message_filename(ptr noundef %0) #8
  %18 = icmp eq ptr %0, @stdin_filename
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1) #8
  br label %601

20:                                               ; preds = %17
  store i8 0, ptr @opt_stdout, align 1, !tbaa !35
  store i8 1, ptr @opt_force, align 1, !tbaa !35
  %21 = tail call ptr @io_open_src(ptr noundef %0) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %601, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) @__const.list_file.xfi, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %11) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %11, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store ptr null, ptr %12, align 8, !tbaa !53
  %24 = load ptr, ptr @spec_fd, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.file_pair, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = tail call i64 @spec_mem_get_length(ptr noundef %24, i32 noundef 3, i32 noundef %26) #8
  %28 = getelementptr inbounds [2048 x i32], ptr %8, i64 0, i64 2
  br label %29

29:                                               ; preds = %190, %23
  %30 = phi ptr [ null, %23 ], [ %187, %190 ]
  %31 = phi i64 [ %27, %23 ], [ %188, %190 ]
  %32 = icmp slt i64 %31, 24
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %21, align 8, !tbaa !58
  %35 = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %34, ptr noundef %35) #8
  br label %195

36:                                               ; preds = %29
  %37 = add nsw i64 %31, -12
  br label %38

38:                                               ; preds = %65, %36
  %39 = phi i64 [ %37, %36 ], [ %66, %65 ]
  %40 = phi i64 [ 0, %36 ], [ %67, %65 ]
  %41 = icmp slt i64 %39, 12
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr %21, align 8, !tbaa !58
  %44 = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %43, ptr noundef %44) #8
  br label %186

45:                                               ; preds = %38
  %46 = call zeroext i1 @io_pread(ptr noundef %21, ptr noundef nonnull %8, i64 noundef 12, i64 noundef %39) #8
  br i1 %46, label %186, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %28, align 8, !tbaa !55
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = add i64 %40, 12
  %52 = add nsw i64 %39, -12
  br label %53

53:                                               ; preds = %50, %58
  %54 = phi i64 [ 2, %50 ], [ %61, %58 ]
  %55 = phi i64 [ %39, %50 ], [ %59, %58 ]
  %56 = phi i64 [ %40, %50 ], [ %60, %58 ]
  %57 = icmp eq i64 %54, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = add nsw i64 %55, -4
  %60 = add i64 %56, 4
  %61 = add nsw i64 %54, -1
  %62 = getelementptr inbounds [2048 x i32], ptr %8, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !55
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %53, label %65, !llvm.loop !59

65:                                               ; preds = %58, %53, %47
  %66 = phi i64 [ %39, %47 ], [ %52, %53 ], [ %59, %58 ]
  %67 = phi i64 [ %40, %47 ], [ %51, %53 ], [ %60, %58 ]
  br i1 %49, label %38, label %68

68:                                               ; preds = %65
  %69 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %10, ptr noundef nonnull %8) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %21, align 8, !tbaa !58
  %73 = call ptr @message_strm(i32 noundef %69) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %72, ptr noundef %73) #8
  br label %186

74:                                               ; preds = %68
  %75 = load i32, ptr %10, align 8, !tbaa !62
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %21, align 8, !tbaa !58
  %79 = call ptr @message_strm(i32 noundef 8) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %78, ptr noundef %79) #8
  br label %186

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !64
  %83 = add i64 %82, 12
  %84 = icmp ult i64 %66, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load ptr, ptr %21, align 8, !tbaa !58
  %87 = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %86, ptr noundef %87) #8
  br label %186

88:                                               ; preds = %80
  %89 = sub i64 %66, %82
  %90 = call i64 @hardware_memlimit_get(i32 noundef 3) #8
  %91 = icmp eq ptr %30, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = call i64 @lzma_index_memused(ptr noundef nonnull %30) #8
  %94 = icmp ugt i64 %93, %90
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  call void @message_bug() #8
  br label %96

96:                                               ; preds = %95, %92
  %97 = sub i64 %90, %93
  br label %98

98:                                               ; preds = %96, %88
  %99 = phi i64 [ %97, %96 ], [ %90, %88 ]
  %100 = phi i64 [ %93, %96 ], [ 0, %88 ]
  %101 = call i32 @lzma_index_decoder(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef %99) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.lzma_stream, ptr %11, i64 0, i32 1
  br label %108

105:                                              ; preds = %98
  %106 = load ptr, ptr %21, align 8, !tbaa !58
  %107 = call ptr @message_strm(i32 noundef %101) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %106, ptr noundef %107) #8
  br label %186

108:                                              ; preds = %103, %113
  %109 = phi i64 [ %115, %113 ], [ %89, %103 ]
  %110 = phi i64 [ %116, %113 ], [ %82, %103 ]
  %111 = call i64 @llvm.umin.i64(i64 %110, i64 8192)
  store i64 %111, ptr %104, align 8, !tbaa !65
  %112 = call zeroext i1 @io_pread(ptr noundef %21, ptr noundef nonnull %8, i64 noundef %111, i64 noundef %109) #8
  br i1 %112, label %186, label %113

113:                                              ; preds = %108
  %114 = load i64, ptr %104, align 8, !tbaa !65
  %115 = add i64 %114, %109
  %116 = sub i64 %110, %114
  store ptr %8, ptr %11, align 8, !tbaa !67
  %117 = call i32 @lzma_code(ptr noundef nonnull %11, i32 noundef 0) #8
  switch i32 %117, label %124 [
    i32 0, label %108
    i32 1, label %118
  ]

118:                                              ; preds = %113
  %119 = icmp ne i64 %116, 0
  %120 = load i64, ptr %104, align 8
  %121 = icmp ne i64 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  %123 = select i1 %122, i32 9, i32 1
  br label %124

124:                                              ; preds = %113, %118
  %125 = phi i32 [ %123, %118 ], [ %117, %113 ]
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %136, label %127

127:                                              ; preds = %124
  %128 = icmp eq i32 %125, 10
  %129 = select i1 %128, i32 9, i32 %125
  %130 = load ptr, ptr %21, align 8, !tbaa !58
  %131 = call ptr @message_strm(i32 noundef %129) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %130, ptr noundef %131) #8
  %132 = icmp eq i32 %129, 6
  br i1 %132, label %133, label %186

133:                                              ; preds = %127
  %134 = call i64 @lzma_memusage(ptr noundef nonnull %11) #8
  %135 = call i64 @llvm.uadd.sat.i64(i64 %134, i64 %100)
  call void @message_mem_needed(i32 noundef 1, i64 noundef %135) #8
  br label %186

136:                                              ; preds = %124
  %137 = load i64, ptr %81, align 8, !tbaa !64
  %138 = add i64 %115, -12
  %139 = sub i64 %138, %137
  %140 = load ptr, ptr %12, align 8, !tbaa !53
  %141 = call i64 @lzma_index_total_size(ptr noundef %140) #8
  %142 = icmp ult i64 %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load ptr, ptr %21, align 8, !tbaa !58
  %145 = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %144, ptr noundef %145) #8
  br label %186

146:                                              ; preds = %136
  %147 = load ptr, ptr %12, align 8, !tbaa !53
  %148 = call i64 @lzma_index_total_size(ptr noundef %147) #8
  %149 = sub i64 %139, %148
  %150 = call zeroext i1 @io_pread(ptr noundef %21, ptr noundef nonnull %8, i64 noundef 12, i64 noundef %149) #8
  br i1 %150, label %186, label %151

151:                                              ; preds = %146
  %152 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %9, ptr noundef nonnull %8) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %21, align 8, !tbaa !58
  %156 = call ptr @message_strm(i32 noundef %152) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %155, ptr noundef %156) #8
  br label %186

157:                                              ; preds = %151
  %158 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %21, align 8, !tbaa !58
  %162 = call ptr @message_strm(i32 noundef %158) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %161, ptr noundef %162) #8
  br label %186

163:                                              ; preds = %157
  %164 = load ptr, ptr %12, align 8, !tbaa !53
  %165 = call i32 @lzma_index_stream_flags(ptr noundef %164, ptr noundef nonnull %10) #8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  call void @message_bug() #8
  br label %168

168:                                              ; preds = %167, %163
  %169 = load ptr, ptr %12, align 8, !tbaa !53
  %170 = call i32 @lzma_index_stream_padding(ptr noundef %169, i64 noundef %67) #8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  call void @message_bug() #8
  br label %173

173:                                              ; preds = %172, %168
  br i1 %91, label %181, label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %12, align 8, !tbaa !53
  %176 = call i32 @lzma_index_cat(ptr noundef %175, ptr noundef nonnull %30, ptr noundef null) #8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %21, align 8, !tbaa !58
  %180 = call ptr @message_strm(i32 noundef %176) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %179, ptr noundef %180) #8
  br label %186

181:                                              ; preds = %174, %173
  %182 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 1
  %183 = load ptr, ptr %12, align 8, !tbaa !53
  store ptr null, ptr %12, align 8, !tbaa !53
  %184 = load i64, ptr %182, align 8, !tbaa !68
  %185 = add i64 %184, %67
  store i64 %185, ptr %182, align 8, !tbaa !68
  br label %186

186:                                              ; preds = %45, %108, %181, %178, %160, %154, %146, %143, %133, %127, %105, %85, %77, %71, %42
  %187 = phi ptr [ %30, %42 ], [ %30, %71 ], [ %30, %77 ], [ %30, %85 ], [ %30, %105 ], [ %30, %143 ], [ %30, %154 ], [ %30, %160 ], [ %30, %178 ], [ %183, %181 ], [ %30, %133 ], [ %30, %127 ], [ %30, %146 ], [ %30, %108 ], [ %30, %45 ]
  %188 = phi i64 [ %39, %42 ], [ %66, %71 ], [ %66, %77 ], [ %66, %85 ], [ %89, %105 ], [ %139, %143 ], [ %149, %154 ], [ %149, %160 ], [ %149, %178 ], [ %149, %181 ], [ %115, %133 ], [ %115, %127 ], [ %149, %146 ], [ %109, %108 ], [ %39, %45 ]
  %189 = phi i1 [ false, %42 ], [ false, %71 ], [ false, %77 ], [ false, %85 ], [ false, %105 ], [ false, %143 ], [ false, %154 ], [ false, %160 ], [ false, %178 ], [ true, %181 ], [ false, %133 ], [ false, %127 ], [ false, %146 ], [ false, %108 ], [ false, %45 ]
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = icmp sgt i64 %188, 0
  br i1 %191, label %29, label %192, !llvm.loop !70

192:                                              ; preds = %190
  call void @lzma_end(ptr noundef nonnull %11) #8
  store ptr %187, ptr %13, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %8) #8
  %193 = load i8, ptr @opt_robot, align 1, !tbaa !35, !range !39, !noundef !40
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %332, label %198

195:                                              ; preds = %186, %33
  %196 = phi ptr [ %30, %33 ], [ %187, %186 ]
  call void @lzma_end(ptr noundef nonnull %11) #8
  call void @lzma_index_end(ptr noundef %196, ptr noundef null) #8
  %197 = load ptr, ptr %12, align 8, !tbaa !53
  call void @lzma_index_end(ptr noundef %197, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %8) #8
  br label %600

198:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #8
  %199 = call i32 @lzma_index_checks(ptr noundef %187) #8
  call fastcc void @get_check_names(ptr noundef nonnull %5, i32 noundef %199, i1 noundef zeroext false)
  %200 = load ptr, ptr %21, align 8, !tbaa !58
  %201 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %200)
  %202 = load ptr, ptr %13, align 8, !tbaa !71
  %203 = call i64 @lzma_index_stream_count(ptr noundef %202) #8
  %204 = call i64 @lzma_index_block_count(ptr noundef %202) #8
  %205 = call i64 @lzma_index_file_size(ptr noundef %202) #8
  %206 = call i64 @lzma_index_uncompressed_size(ptr noundef %202) #8
  %207 = call i64 @lzma_index_file_size(ptr noundef %202) #8
  %208 = call i64 @lzma_index_uncompressed_size(ptr noundef %202) #8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %198
  %211 = uitofp i64 %207 to double
  %212 = uitofp i64 %208 to double
  %213 = fdiv double %211, %212
  %214 = fcmp ogt double %213, 9.999000e+00
  br i1 %214, label %217, label %215

215:                                              ; preds = %210
  %216 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %213) #8
  br label %217

217:                                              ; preds = %215, %210, %198
  %218 = phi ptr [ @.str.10, %198 ], [ @get_ratio.buf, %215 ], [ @.str.10, %210 ]
  %219 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 1
  %220 = load i64, ptr %219, align 8, !tbaa !68
  %221 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %203, i64 noundef %204, i64 noundef %205, i64 noundef %206, ptr noundef nonnull %218, ptr noundef nonnull %5, i64 noundef %220)
  %222 = call i32 @message_verbosity_get() #8
  %223 = icmp ugt i32 %222, 2
  br i1 %223, label %224, label %319

224:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %6) #8
  call void @lzma_index_iter_init(ptr noundef nonnull %6, ptr noundef %202) #8
  %225 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %6, i32 noundef 1) #8
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %261

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 4
  %229 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 5
  %230 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 6
  %231 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 7
  %232 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 8
  %233 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 9
  %234 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 10
  br label %235

235:                                              ; preds = %227, %250
  %236 = load i64, ptr %228, align 8, !tbaa !72
  %237 = load i64, ptr %229, align 8, !tbaa !76
  %238 = load i64, ptr %230, align 8, !tbaa !77
  %239 = load i64, ptr %231, align 8, !tbaa !78
  %240 = load i64, ptr %232, align 8, !tbaa !79
  %241 = load i64, ptr %233, align 8, !tbaa !80
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %235
  %244 = uitofp i64 %240 to double
  %245 = uitofp i64 %241 to double
  %246 = fdiv double %244, %245
  %247 = fcmp ogt double %246, 9.999000e+00
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %246) #8
  br label %250

250:                                              ; preds = %248, %243, %235
  %251 = phi ptr [ @.str.10, %235 ], [ @get_ratio.buf, %248 ], [ @.str.10, %243 ]
  %252 = load ptr, ptr %6, align 8, !tbaa !81
  %253 = getelementptr inbounds %struct.lzma_stream_flags, ptr %252, i64 0, i32 2
  %254 = load i32, ptr %253, align 8, !tbaa !82
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %255
  %257 = load i64, ptr %234, align 8, !tbaa !83
  %258 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i64 noundef %236, i64 noundef %237, i64 noundef %238, i64 noundef %239, i64 noundef %240, i64 noundef %241, ptr noundef nonnull %251, ptr noundef nonnull %256, i64 noundef %257)
  %259 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %6, i32 noundef 1) #8
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %235, label %261, !llvm.loop !84

261:                                              ; preds = %250, %224
  call void @lzma_index_iter_rewind(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %7) #8
  %262 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %6, i32 noundef 2) #8
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %318

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 4
  %266 = getelementptr inbounds %struct.lzma_index_iter, ptr %6, i64 0, i32 1
  %267 = getelementptr inbounds %struct.lzma_index_iter, ptr %6, i64 0, i32 1, i32 3
  %268 = getelementptr inbounds %struct.lzma_index_iter, ptr %6, i64 0, i32 1, i32 1
  %269 = getelementptr inbounds %struct.lzma_index_iter, ptr %6, i64 0, i32 1, i32 2
  %270 = getelementptr inbounds %struct.lzma_index_iter, ptr %6, i64 0, i32 1, i32 8
  %271 = getelementptr inbounds %struct.lzma_index_iter, ptr %6, i64 0, i32 1, i32 6
  %272 = getelementptr inbounds %struct.block_header_info, ptr %7, i64 0, i32 1
  %273 = getelementptr inbounds %struct.block_header_info, ptr %7, i64 0, i32 2
  %274 = getelementptr inbounds %struct.block_header_info, ptr %7, i64 0, i32 3
  %275 = getelementptr inbounds %struct.block_header_info, ptr %7, i64 0, i32 4
  br label %276

276:                                              ; preds = %264, %312
  %277 = call i32 @message_verbosity_get() #8
  %278 = icmp ugt i32 %277, 3
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = call fastcc zeroext i1 @parse_details(ptr noundef nonnull %21, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %13)
  br i1 %280, label %317, label %281

281:                                              ; preds = %279, %276
  %282 = load i64, ptr %265, align 8, !tbaa !72
  %283 = load i64, ptr %267, align 8, !tbaa !85
  %284 = load i64, ptr %266, align 8, !tbaa !86
  %285 = load i64, ptr %268, align 8, !tbaa !87
  %286 = load i64, ptr %269, align 8, !tbaa !88
  %287 = load i64, ptr %270, align 8, !tbaa !89
  %288 = load i64, ptr %271, align 8, !tbaa !90
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %281
  %291 = uitofp i64 %287 to double
  %292 = uitofp i64 %288 to double
  %293 = fdiv double %291, %292
  %294 = fcmp ogt double %293, 9.999000e+00
  br i1 %294, label %297, label %295

295:                                              ; preds = %290
  %296 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %293) #8
  br label %297

297:                                              ; preds = %295, %290, %281
  %298 = phi ptr [ @.str.10, %281 ], [ @get_ratio.buf, %295 ], [ @.str.10, %290 ]
  %299 = load ptr, ptr %6, align 8, !tbaa !81
  %300 = getelementptr inbounds %struct.lzma_stream_flags, ptr %299, i64 0, i32 2
  %301 = load i32, ptr %300, align 8, !tbaa !82
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %302
  %304 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %282, i64 noundef %283, i64 noundef %284, i64 noundef %285, i64 noundef %286, i64 noundef %287, i64 noundef %288, ptr noundef nonnull %298, ptr noundef nonnull %303)
  %305 = call i32 @message_verbosity_get() #8
  %306 = icmp ugt i32 %305, 3
  br i1 %306, label %307, label %312

307:                                              ; preds = %297
  %308 = load i32, ptr %7, align 8, !tbaa !91
  %309 = load i64, ptr %273, align 8, !tbaa !93
  %310 = load i64, ptr %274, align 8, !tbaa !94
  %311 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @check_value, i32 noundef %308, ptr noundef nonnull %272, i64 noundef %309, i64 noundef %310, ptr noundef nonnull %275)
  br label %312

312:                                              ; preds = %307, %297
  %313 = load ptr, ptr @stdout, align 8, !tbaa !53
  %314 = call i32 @putc(i32 noundef 10, ptr noundef %313)
  %315 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %6, i32 noundef 2) #8
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %276, label %318, !llvm.loop !95

317:                                              ; preds = %279
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %6) #8
  br label %330

318:                                              ; preds = %312, %261
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %6) #8
  br label %319

319:                                              ; preds = %318, %217
  %320 = call i32 @message_verbosity_get() #8
  %321 = icmp ugt i32 %320, 3
  br i1 %321, label %322, label %330

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 2
  %324 = load i64, ptr %323, align 8, !tbaa !96
  %325 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 3
  %326 = load i8, ptr %325, align 8, !tbaa !97, !range !39, !noundef !40
  %327 = icmp eq i8 %326, 0
  %328 = select i1 %327, ptr @.str.5, ptr @.str.4
  %329 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %324, ptr noundef nonnull %328)
  br label %330

330:                                              ; preds = %317, %319, %322
  %331 = phi i1 [ true, %317 ], [ false, %322 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #8
  br label %563

332:                                              ; preds = %192
  %333 = call i32 @message_verbosity_get() #8
  %334 = icmp ult i32 %333, 3
  br i1 %334, label %335, label %370

335:                                              ; preds = %332
  %336 = load i1, ptr @print_info_basic.headings_displayed, align 1
  br i1 %336, label %339, label %337

337:                                              ; preds = %335
  store i1 true, ptr @print_info_basic.headings_displayed, align 1
  %338 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38)
  br label %339

339:                                              ; preds = %337, %335
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #8
  %340 = call i32 @lzma_index_checks(ptr noundef %187) #8
  call fastcc void @get_check_names(ptr noundef nonnull %4, i32 noundef %340, i1 noundef zeroext false)
  %341 = load ptr, ptr %13, align 8, !tbaa !71
  %342 = call i64 @lzma_index_stream_count(ptr noundef %341) #8
  %343 = call ptr @uint64_to_str(i64 noundef %342, i32 noundef 0) #8
  %344 = call i64 @lzma_index_block_count(ptr noundef %341) #8
  %345 = call ptr @uint64_to_str(i64 noundef %344, i32 noundef 1) #8
  %346 = call i64 @lzma_index_file_size(ptr noundef %341) #8
  %347 = call ptr @uint64_to_nicestr(i64 noundef %346, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #8
  %348 = call i64 @lzma_index_uncompressed_size(ptr noundef %341) #8
  %349 = call ptr @uint64_to_nicestr(i64 noundef %348, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #8
  %350 = call i64 @lzma_index_file_size(ptr noundef %341) #8
  %351 = call i64 @lzma_index_uncompressed_size(ptr noundef %341) #8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %339
  %354 = uitofp i64 %350 to double
  %355 = uitofp i64 %351 to double
  %356 = fdiv double %354, %355
  %357 = fcmp ogt double %356, 9.999000e+00
  br i1 %357, label %360, label %358

358:                                              ; preds = %353
  %359 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %356) #8
  br label %360

360:                                              ; preds = %339, %353, %358
  %361 = phi ptr [ @.str.10, %339 ], [ @get_ratio.buf, %358 ], [ @.str.10, %353 ]
  %362 = load ptr, ptr %21, align 8, !tbaa !58
  %363 = call i32 @tuklib_mbstr_fw(ptr noundef %343, i32 noundef 5) #8
  %364 = call i32 @tuklib_mbstr_fw(ptr noundef %345, i32 noundef 7) #8
  %365 = call i32 @tuklib_mbstr_fw(ptr noundef %347, i32 noundef 11) #8
  %366 = call i32 @tuklib_mbstr_fw(ptr noundef %349, i32 noundef 11) #8
  %367 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %361, i32 noundef 5) #8
  %368 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %4, i32 noundef 7) #8
  %369 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %363, ptr noundef %343, i32 noundef %364, ptr noundef %345, i32 noundef %365, ptr noundef %347, i32 noundef %366, ptr noundef %349, i32 noundef %367, ptr noundef nonnull %361, i32 noundef %368, ptr noundef nonnull %4, ptr noundef %362)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #8
  br label %565

370:                                              ; preds = %332
  %371 = call i64 @lzma_index_stream_count(ptr noundef %187) #8
  %372 = load ptr, ptr %13, align 8, !tbaa !71
  %373 = call i64 @lzma_index_block_count(ptr noundef %372) #8
  %374 = call i64 @lzma_index_file_size(ptr noundef %372) #8
  %375 = call i64 @lzma_index_uncompressed_size(ptr noundef %372) #8
  %376 = call i32 @lzma_index_checks(ptr noundef %372) #8
  %377 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !68
  call fastcc void @print_adv_helper(i64 noundef %371, i64 noundef %373, i64 noundef %374, i64 noundef %375, i32 noundef %376, i64 noundef %378)
  %379 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40)
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %2) #8
  call void @lzma_index_iter_init(ptr noundef nonnull %2, ptr noundef %372) #8
  %380 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %2, i32 noundef 1) #8
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %450

382:                                              ; preds = %370
  %383 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 4
  %384 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 5
  %385 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 6
  %386 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 7
  %387 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 8
  %388 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 9
  %389 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 10
  br label %390

390:                                              ; preds = %382, %444
  %391 = phi i32 [ 0, %382 ], [ %445, %444 ]
  %392 = load i64, ptr %383, align 8, !tbaa !72
  %393 = call ptr @uint64_to_str(i64 noundef %392, i32 noundef 0) #8
  %394 = load i64, ptr %384, align 8, !tbaa !76
  %395 = call ptr @uint64_to_str(i64 noundef %394, i32 noundef 1) #8
  %396 = load i64, ptr %385, align 8, !tbaa !77
  %397 = call ptr @uint64_to_str(i64 noundef %396, i32 noundef 2) #8
  %398 = load i64, ptr %386, align 8, !tbaa !78
  %399 = call ptr @uint64_to_str(i64 noundef %398, i32 noundef 3) #8
  %400 = call i32 @tuklib_mbstr_fw(ptr noundef %393, i32 noundef 6) #8
  %401 = call i32 @tuklib_mbstr_fw(ptr noundef %395, i32 noundef 9) #8
  %402 = call i32 @tuklib_mbstr_fw(ptr noundef %397, i32 noundef 15) #8
  %403 = call i32 @tuklib_mbstr_fw(ptr noundef %399, i32 noundef 15) #8
  %404 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %400, ptr noundef %393, i32 noundef %401, ptr noundef %395, i32 noundef %402, ptr noundef %397, i32 noundef %403, ptr noundef %399)
  %405 = load i64, ptr %387, align 8, !tbaa !79
  %406 = call ptr @uint64_to_str(i64 noundef %405, i32 noundef 0) #8
  %407 = load i64, ptr %388, align 8, !tbaa !80
  %408 = call ptr @uint64_to_str(i64 noundef %407, i32 noundef 1) #8
  %409 = load i64, ptr %388, align 8, !tbaa !80
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %419, label %411

411:                                              ; preds = %390
  %412 = load i64, ptr %387, align 8, !tbaa !79
  %413 = uitofp i64 %412 to double
  %414 = uitofp i64 %409 to double
  %415 = fdiv double %413, %414
  %416 = fcmp ogt double %415, 9.999000e+00
  br i1 %416, label %419, label %417

417:                                              ; preds = %411
  %418 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %415) #8
  br label %419

419:                                              ; preds = %417, %411, %390
  %420 = phi ptr [ @.str.10, %390 ], [ @get_ratio.buf, %417 ], [ @.str.10, %411 ]
  %421 = load ptr, ptr %2, align 8, !tbaa !81
  %422 = getelementptr inbounds %struct.lzma_stream_flags, ptr %421, i64 0, i32 2
  %423 = load i32, ptr %422, align 8, !tbaa !82
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %424
  %426 = load i64, ptr %389, align 8, !tbaa !83
  %427 = call ptr @uint64_to_str(i64 noundef %426, i32 noundef 2) #8
  %428 = call i32 @tuklib_mbstr_fw(ptr noundef %406, i32 noundef 15) #8
  %429 = call i32 @tuklib_mbstr_fw(ptr noundef %408, i32 noundef 15) #8
  %430 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %420, i32 noundef 5) #8
  %431 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %425, i32 noundef 10) #8
  %432 = call i32 @tuklib_mbstr_fw(ptr noundef %427, i32 noundef 7) #8
  %433 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %428, ptr noundef %406, i32 noundef %429, ptr noundef %408, i32 noundef %430, ptr noundef nonnull %420, i32 noundef %431, ptr noundef nonnull %425, i32 noundef %432, ptr noundef %427)
  %434 = load ptr, ptr %2, align 8, !tbaa !81
  %435 = getelementptr inbounds %struct.lzma_stream_flags, ptr %434, i64 0, i32 2
  %436 = load i32, ptr %435, align 8, !tbaa !82
  %437 = call i32 @lzma_check_size(i32 noundef %436) #8
  %438 = icmp ugt i32 %437, %391
  br i1 %438, label %439, label %444

439:                                              ; preds = %419
  %440 = load ptr, ptr %2, align 8, !tbaa !81
  %441 = getelementptr inbounds %struct.lzma_stream_flags, ptr %440, i64 0, i32 2
  %442 = load i32, ptr %441, align 8, !tbaa !82
  %443 = call i32 @lzma_check_size(i32 noundef %442) #8
  br label %444

444:                                              ; preds = %439, %419
  %445 = phi i32 [ %443, %439 ], [ %391, %419 ]
  %446 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %2, i32 noundef 1) #8
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %390, label %448, !llvm.loop !98

448:                                              ; preds = %444
  %449 = shl i32 %445, 1
  br label %450

450:                                              ; preds = %448, %370
  %451 = phi i32 [ 0, %370 ], [ %449, %448 ]
  %452 = call i32 @message_verbosity_get() #8
  %453 = icmp ugt i32 %452, 3
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %3) #8
  %454 = call i64 @lzma_index_block_count(ptr noundef %372) #8
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %549, label %456

456:                                              ; preds = %450
  %457 = call i32 @llvm.umax.i32(i32 %451, i32 8)
  %458 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43)
  br i1 %453, label %459, label %462

459:                                              ; preds = %456
  %460 = add nsw i32 %457, -8
  %461 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %460, ptr noundef nonnull @.str.9)
  br label %462

462:                                              ; preds = %459, %456
  %463 = load ptr, ptr @stdout, align 8, !tbaa !53
  %464 = call i32 @putc(i32 noundef 10, ptr noundef %463)
  call void @lzma_index_iter_init(ptr noundef nonnull %2, ptr noundef %372) #8
  %465 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %2, i32 noundef 2) #8
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %467, label %549

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 4
  %469 = getelementptr inbounds %struct.lzma_index_iter, ptr %2, i64 0, i32 1, i32 3
  %470 = getelementptr inbounds %struct.lzma_index_iter, ptr %2, i64 0, i32 1, i32 1
  %471 = getelementptr inbounds %struct.lzma_index_iter, ptr %2, i64 0, i32 1, i32 2
  %472 = getelementptr inbounds %struct.lzma_index_iter, ptr %2, i64 0, i32 1, i32 8
  %473 = getelementptr inbounds %struct.lzma_index_iter, ptr %2, i64 0, i32 1, i32 6
  %474 = getelementptr inbounds %struct.lzma_index_iter, ptr %2, i64 0, i32 1, i32 7
  %475 = getelementptr inbounds %struct.block_header_info, ptr %3, i64 0, i32 1
  %476 = getelementptr inbounds %struct.block_header_info, ptr %3, i64 0, i32 3
  %477 = getelementptr inbounds %struct.block_header_info, ptr %3, i64 0, i32 4
  br label %478

478:                                              ; preds = %467, %544
  br i1 %453, label %479, label %481

479:                                              ; preds = %478
  %480 = call fastcc zeroext i1 @parse_details(ptr noundef %21, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %13)
  br i1 %480, label %561, label %481

481:                                              ; preds = %479, %478
  %482 = phi i32 [ 11, %479 ], [ 1, %478 ]
  %483 = load i64, ptr %468, align 8, !tbaa !72
  %484 = call ptr @uint64_to_str(i64 noundef %483, i32 noundef 0) #8
  %485 = load i64, ptr %469, align 8, !tbaa !85
  %486 = call ptr @uint64_to_str(i64 noundef %485, i32 noundef 1) #8
  %487 = load i64, ptr %470, align 8, !tbaa !87
  %488 = call ptr @uint64_to_str(i64 noundef %487, i32 noundef 2) #8
  %489 = load i64, ptr %471, align 8, !tbaa !88
  %490 = call ptr @uint64_to_str(i64 noundef %489, i32 noundef 3) #8
  %491 = call i32 @tuklib_mbstr_fw(ptr noundef %484, i32 noundef 6) #8
  %492 = call i32 @tuklib_mbstr_fw(ptr noundef %486, i32 noundef 9) #8
  %493 = call i32 @tuklib_mbstr_fw(ptr noundef %488, i32 noundef 15) #8
  %494 = call i32 @tuklib_mbstr_fw(ptr noundef %490, i32 noundef 15) #8
  %495 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %491, ptr noundef %484, i32 noundef %492, ptr noundef %486, i32 noundef %493, ptr noundef %488, i32 noundef %494, ptr noundef %490)
  %496 = load i64, ptr %472, align 8, !tbaa !89
  %497 = call ptr @uint64_to_str(i64 noundef %496, i32 noundef 0) #8
  %498 = load i64, ptr %473, align 8, !tbaa !90
  %499 = call ptr @uint64_to_str(i64 noundef %498, i32 noundef 1) #8
  %500 = load i64, ptr %473, align 8, !tbaa !90
  %501 = icmp eq i64 %500, 0
  br i1 %501, label %510, label %502

502:                                              ; preds = %481
  %503 = load i64, ptr %472, align 8, !tbaa !89
  %504 = uitofp i64 %503 to double
  %505 = uitofp i64 %500 to double
  %506 = fdiv double %504, %505
  %507 = fcmp ogt double %506, 9.999000e+00
  br i1 %507, label %510, label %508

508:                                              ; preds = %502
  %509 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %506) #8
  br label %510

510:                                              ; preds = %508, %502, %481
  %511 = phi ptr [ @.str.10, %481 ], [ @get_ratio.buf, %508 ], [ @.str.10, %502 ]
  %512 = load ptr, ptr %2, align 8, !tbaa !81
  %513 = getelementptr inbounds %struct.lzma_stream_flags, ptr %512, i64 0, i32 2
  %514 = load i32, ptr %513, align 8, !tbaa !82
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %515
  %517 = call i32 @tuklib_mbstr_fw(ptr noundef %497, i32 noundef 15) #8
  %518 = call i32 @tuklib_mbstr_fw(ptr noundef %499, i32 noundef 15) #8
  %519 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %511, i32 noundef 5) #8
  %520 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %516, i32 noundef %482) #8
  %521 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %517, ptr noundef %497, i32 noundef %518, ptr noundef %499, i32 noundef %519, ptr noundef nonnull %511, i32 noundef %520, ptr noundef nonnull %516)
  br i1 %453, label %522, label %544

522:                                              ; preds = %510
  %523 = load i64, ptr %474, align 8, !tbaa !99
  %524 = load i32, ptr %3, align 8, !tbaa !91
  %525 = zext i32 %524 to i64
  %526 = load ptr, ptr %2, align 8, !tbaa !81
  %527 = getelementptr inbounds %struct.lzma_stream_flags, ptr %526, i64 0, i32 2
  %528 = load i32, ptr %527, align 8, !tbaa !82
  %529 = call i32 @lzma_check_size(i32 noundef %528) #8
  %530 = zext i32 %529 to i64
  %531 = add nuw nsw i64 %525, %530
  %532 = sub i64 %523, %531
  %533 = load i32, ptr %3, align 8, !tbaa !91
  %534 = zext i32 %533 to i64
  %535 = call ptr @uint64_to_str(i64 noundef %534, i32 noundef 0) #8
  %536 = call ptr @uint64_to_str(i64 noundef %532, i32 noundef 1) #8
  %537 = load i64, ptr %476, align 8, !tbaa !94
  %538 = call i64 @round_up_to_mib(i64 noundef %537) #8
  %539 = call ptr @uint64_to_str(i64 noundef %538, i32 noundef 2) #8
  %540 = call i32 @tuklib_mbstr_fw(ptr noundef %535, i32 noundef 6) #8
  %541 = call i32 @tuklib_mbstr_fw(ptr noundef %536, i32 noundef 15) #8
  %542 = call i32 @tuklib_mbstr_fw(ptr noundef %539, i32 noundef 7) #8
  %543 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %457, ptr noundef nonnull @check_value, i32 noundef %540, ptr noundef %535, ptr noundef nonnull %475, i32 noundef %541, ptr noundef %536, i32 noundef %542, ptr noundef %539, ptr noundef nonnull %477)
  br label %544

544:                                              ; preds = %522, %510
  %545 = load ptr, ptr @stdout, align 8, !tbaa !53
  %546 = call i32 @putc(i32 noundef 10, ptr noundef %545)
  %547 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %2, i32 noundef 2) #8
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %478, label %549, !llvm.loop !100

549:                                              ; preds = %544, %462, %450
  br i1 %453, label %550, label %561

550:                                              ; preds = %549
  %551 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 2
  %552 = load i64, ptr %551, align 8, !tbaa !96
  %553 = call i64 @round_up_to_mib(i64 noundef %552) #8
  %554 = call ptr @uint64_to_str(i64 noundef %553, i32 noundef 0) #8
  %555 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %554)
  %556 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 3
  %557 = load i8, ptr %556, align 8, !tbaa !97, !range !39, !noundef !40
  %558 = icmp eq i8 %557, 0
  %559 = select i1 %558, ptr @.str.20, ptr @.str.19
  %560 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %559)
  br label %561

561:                                              ; preds = %479, %549, %550
  %562 = phi i1 [ false, %550 ], [ false, %549 ], [ true, %479 ]
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %2) #8
  br label %563

563:                                              ; preds = %561, %330
  %564 = phi i1 [ %331, %330 ], [ %562, %561 ]
  br i1 %564, label %598, label %565

565:                                              ; preds = %360, %563
  %566 = load i64, ptr @totals.0, align 8, !tbaa !50
  %567 = add i64 %566, 1
  store i64 %567, ptr @totals.0, align 8, !tbaa !50
  %568 = load ptr, ptr %13, align 8, !tbaa !71
  %569 = call i64 @lzma_index_stream_count(ptr noundef %568) #8
  %570 = load i64, ptr @totals.1, align 8, !tbaa !45
  %571 = add i64 %570, %569
  store i64 %571, ptr @totals.1, align 8, !tbaa !45
  %572 = call i64 @lzma_index_block_count(ptr noundef %568) #8
  %573 = load i64, ptr @totals.2, align 8, !tbaa !46
  %574 = add i64 %573, %572
  store i64 %574, ptr @totals.2, align 8, !tbaa !46
  %575 = call i64 @lzma_index_file_size(ptr noundef %568) #8
  %576 = load i64, ptr @totals.3, align 8, !tbaa !47
  %577 = add i64 %576, %575
  store i64 %577, ptr @totals.3, align 8, !tbaa !47
  %578 = call i64 @lzma_index_uncompressed_size(ptr noundef %568) #8
  %579 = load i64, ptr @totals.4, align 8, !tbaa !48
  %580 = add i64 %579, %578
  store i64 %580, ptr @totals.4, align 8, !tbaa !48
  %581 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 1
  %582 = load i64, ptr %581, align 8, !tbaa !68
  %583 = load i64, ptr @totals.5, align 8, !tbaa !49
  %584 = add i64 %583, %582
  store i64 %584, ptr @totals.5, align 8, !tbaa !49
  %585 = call i32 @lzma_index_checks(ptr noundef %568) #8
  %586 = load i32, ptr @totals.7, align 8, !tbaa !41
  %587 = or i32 %586, %585
  store i32 %587, ptr @totals.7, align 8, !tbaa !41
  %588 = load i64, ptr @totals.6, align 8, !tbaa !51
  %589 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 2
  %590 = load i64, ptr %589, align 8, !tbaa !96
  %591 = icmp ult i64 %588, %590
  br i1 %591, label %592, label %593

592:                                              ; preds = %565
  store i64 %590, ptr @totals.6, align 8, !tbaa !51
  br label %593

593:                                              ; preds = %565, %592
  %594 = getelementptr inbounds %struct.xz_file_info, ptr %13, i64 0, i32 3
  %595 = load i8, ptr %594, align 8, !tbaa !97, !range !39, !noundef !40
  %596 = load i8, ptr @totals.8, align 4, !tbaa !52, !range !39, !noundef !40
  %597 = and i8 %596, %595
  store i8 %597, ptr @totals.8, align 4, !tbaa !52
  br label %598

598:                                              ; preds = %593, %563
  %599 = load ptr, ptr %13, align 8, !tbaa !71
  call void @lzma_index_end(ptr noundef %599, ptr noundef null) #8
  br label %600

600:                                              ; preds = %195, %598
  call void @io_close(ptr noundef nonnull %21, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #8
  br label %601

601:                                              ; preds = %600, %20, %19
  ret void
}

declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

declare void @message_filename(ptr noundef) local_unnamed_addr #1

declare void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @io_open_src(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @get_check_names(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr %0, ptr %4, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 1024, ptr %5, align 8, !tbaa !101
  %6 = select i1 %2, ptr @.str.6, ptr @.str.7
  br label %8

7:                                                ; preds = %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void

8:                                                ; preds = %3, %20
  %9 = phi i64 [ 0, %3 ], [ %22, %20 ]
  %10 = phi i8 [ 0, %3 ], [ %21, %20 ]
  %11 = trunc i64 %9 to i32
  %12 = shl nuw nsw i32 1, %11
  %13 = and i32 %12, %1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = and i8 %10, 1
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, ptr @.str.9, ptr %6
  %19 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull %18, ptr noundef nonnull %19) #8
  br label %20

20:                                               ; preds = %8, %15
  %21 = phi i8 [ 1, %15 ], [ %10, %8 ]
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 16
  br i1 %23, label %7, label %8, !llvm.loop !102
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @uint64_to_nicestr(i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_adv_helper(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 !prof !34 {
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #8
  call fastcc void @get_check_names(ptr noundef nonnull %7, i32 noundef %4, i1 noundef zeroext true)
  %8 = call ptr @uint64_to_str(i64 noundef %0, i32 noundef 0) #8
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %8)
  %10 = call ptr @uint64_to_str(i64 noundef %1, i32 noundef 0) #8
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %10)
  %12 = call ptr @uint64_to_nicestr(i64 noundef %2, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %12)
  %14 = call ptr @uint64_to_nicestr(i64 noundef %3, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %14)
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %6
  %18 = uitofp i64 %2 to double
  %19 = uitofp i64 %3 to double
  %20 = fdiv double %18, %19
  %21 = fcmp ogt double %20, 9.999000e+00
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %20) #8
  br label %24

24:                                               ; preds = %6, %17, %22
  %25 = phi ptr [ @.str.10, %6 ], [ @get_ratio.buf, %22 ], [ @.str.10, %17 ]
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %25)
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %7)
  %28 = call ptr @uint64_to_nicestr(i64 noundef %5, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %28)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #8
  ret void
}

declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #1

declare i64 @spec_mem_get_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @message_strm(i32 noundef) local_unnamed_addr #1

declare zeroext i1 @io_pread(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #1

declare i64 @lzma_index_memused(ptr noundef) local_unnamed_addr #1

declare void @message_bug() local_unnamed_addr #1

declare i32 @lzma_index_decoder(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lzma_memusage(ptr noundef) local_unnamed_addr #1

declare void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @lzma_index_total_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_stream_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_stream_padding(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_index_cat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_checks(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_stream_count(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_file_size(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_uncompressed_size(ptr noundef) local_unnamed_addr #1

declare void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lzma_index_iter_rewind(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @parse_details(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !34 {
  %5 = alloca %union.io_buf, align 8
  %6 = alloca %union.io_buf, align 8
  %7 = alloca [5 x %struct.lzma_filter], align 16
  %8 = alloca %struct.lzma_block, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %8)
  %9 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !89
  %11 = load ptr, ptr %1, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.lzma_stream_flags, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !82
  %14 = tail call i32 @lzma_check_size(i32 noundef %13) #8
  %15 = zext i32 %14 to i64
  %16 = sub i64 %10, %15
  %17 = icmp ult i64 %16, 1024
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i64, ptr %9, align 8, !tbaa !89
  %20 = load ptr, ptr %1, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.lzma_stream_flags, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !82
  %23 = tail call i32 @lzma_check_size(i32 noundef %22) #8
  %24 = trunc i64 %19 to i32
  %25 = sub i32 %24, %23
  br label %26

26:                                               ; preds = %18, %4
  %27 = phi i32 [ %25, %18 ], [ 1024, %4 ]
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %6) #8
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !87
  %31 = call zeroext i1 @io_pread(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %28, i64 noundef %30) #8
  br i1 %31, label %150, label %32

32:                                               ; preds = %26
  %33 = load i8, ptr %6, align 8, !tbaa !55
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %113, label %35

35:                                               ; preds = %32
  store i32 0, ptr %8, align 8, !tbaa !103
  %36 = load ptr, ptr %1, align 8, !tbaa !81
  %37 = getelementptr inbounds %struct.lzma_stream_flags, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.lzma_block, ptr %8, i64 0, i32 2
  store i32 %38, ptr %39, align 8, !tbaa !105
  %40 = getelementptr inbounds %struct.lzma_block, ptr %8, i64 0, i32 5
  store ptr %7, ptr %40, align 8, !tbaa !106
  %41 = zext i8 %33 to i32
  %42 = shl nuw nsw i32 %41, 2
  %43 = add nuw nsw i32 %42, 4
  %44 = getelementptr inbounds %struct.lzma_block, ptr %8, i64 0, i32 1
  store i32 %43, ptr %44, align 4, !tbaa !107
  %45 = icmp ugt i32 %43, %27
  br i1 %45, label %113, label %46

46:                                               ; preds = %35
  %47 = call i32 @lzma_block_header_decode(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %6) #8
  switch i32 %47, label %48 [
    i32 0, label %49
    i32 8, label %146
    i32 9, label %113
  ]

48:                                               ; preds = %46
  call void @message_bug() #8
  br label %49

49:                                               ; preds = %48, %46
  %50 = getelementptr inbounds %struct.lzma_block, ptr %8, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !108
  %52 = icmp eq i64 %51, -1
  %53 = select i1 %52, i8 45, i8 99
  %54 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 1
  store i8 %53, ptr %54, align 4, !tbaa !55
  %55 = getelementptr inbounds %struct.lzma_block, ptr %8, i64 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = icmp eq i64 %56, -1
  %58 = select i1 %57, i8 45, i8 117
  %59 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 1, i64 1
  store i8 %58, ptr %59, align 1, !tbaa !55
  %60 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 1, i64 2
  store i8 0, ptr %60, align 2, !tbaa !55
  %61 = icmp ne i64 %51, -1
  %62 = icmp ne i64 %56, -1
  %63 = select i1 %61, i1 %62, i1 false
  %64 = getelementptr inbounds %struct.xz_file_info, ptr %3, i64 0, i32 3
  %65 = load i8, ptr %64, align 8, !tbaa !97, !range !39, !noundef !40
  %66 = icmp ne i8 %65, 0
  %67 = and i1 %63, %66
  %68 = zext i1 %67 to i8
  store i8 %68, ptr %64, align 8, !tbaa !97
  %69 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 7
  %70 = load i64, ptr %69, align 8, !tbaa !99
  %71 = call i32 @lzma_block_compressed_size(ptr noundef nonnull %8, i64 noundef %70) #8
  switch i32 %71, label %90 [
    i32 0, label %72
    i32 9, label %79
  ]

72:                                               ; preds = %49
  %73 = load i64, ptr %55, align 8, !tbaa !109
  %74 = icmp eq i64 %73, -1
  br i1 %74, label %91, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 6
  %77 = load i64, ptr %76, align 8, !tbaa !90
  %78 = icmp eq i64 %73, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %75, %49
  %80 = load i64, ptr %7, align 16, !tbaa !110
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %113, label %82

82:                                               ; preds = %79, %82
  %83 = phi i64 [ %86, %82 ], [ 0, %79 ]
  %84 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %7, i64 0, i64 %83, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !112
  call void @free(ptr noundef %85) #8
  %86 = add i64 %83, 1
  %87 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %7, i64 0, i64 %86
  %88 = load i64, ptr %87, align 16, !tbaa !110
  %89 = icmp eq i64 %88, -1
  br i1 %89, label %113, label %82, !llvm.loop !113

90:                                               ; preds = %49
  call void @message_bug() #8
  br label %91

91:                                               ; preds = %90, %75, %72
  %92 = load i32, ptr %44, align 4, !tbaa !107
  store i32 %92, ptr %2, align 8, !tbaa !91
  %93 = load i64, ptr %50, align 8, !tbaa !108
  %94 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 2
  store i64 %93, ptr %94, align 8, !tbaa !93
  %95 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %7) #8
  %96 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 3
  store i64 %95, ptr %96, align 8, !tbaa !94
  %97 = getelementptr inbounds %struct.xz_file_info, ptr %3, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !96
  %99 = icmp ult i64 %98, %95
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i64 %95, ptr %97, align 8, !tbaa !96
  br label %101

101:                                              ; preds = %100, %91
  %102 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 4
  call void @message_filters_to_str(ptr noundef nonnull %102, ptr noundef nonnull %7, i1 noundef zeroext false) #8
  %103 = load i64, ptr %7, align 16, !tbaa !110
  %104 = icmp eq i64 %103, -1
  br i1 %104, label %114, label %105

105:                                              ; preds = %101, %105
  %106 = phi i64 [ %109, %105 ], [ 0, %101 ]
  %107 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %7, i64 0, i64 %106, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !112
  call void @free(ptr noundef %108) #8
  %109 = add i64 %106, 1
  %110 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %7, i64 0, i64 %109
  %111 = load i64, ptr %110, align 16, !tbaa !110
  %112 = icmp eq i64 %111, -1
  br i1 %112, label %114, label %105, !llvm.loop !114

113:                                              ; preds = %82, %79, %46, %35, %32
  br label %146

114:                                              ; preds = %105, %101
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %8)
  %115 = load ptr, ptr %1, align 8, !tbaa !81
  %116 = getelementptr inbounds %struct.lzma_stream_flags, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !82
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 2960685, ptr @check_value, align 16
  br label %151

120:                                              ; preds = %114
  %121 = call i32 @lzma_check_size(i32 noundef %117) #8
  %122 = load i64, ptr %29, align 8, !tbaa !87
  %123 = load i64, ptr %9, align 8, !tbaa !89
  %124 = zext i32 %121 to i64
  %125 = sub i64 %122, %124
  %126 = add i64 %125, %123
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #8
  %127 = call zeroext i1 @io_pread(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %124, i64 noundef %126) #8
  br i1 %127, label %145, label %128

128:                                              ; preds = %120
  switch i32 %121, label %135 [
    i32 4, label %129
    i32 8, label %132
    i32 0, label %145
  ]

129:                                              ; preds = %128
  %130 = load i32, ptr %5, align 8, !tbaa !55
  %131 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.35, i32 noundef %130) #8
  br label %145

132:                                              ; preds = %128
  %133 = load i64, ptr %5, align 8, !tbaa !55
  %134 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.36, i64 noundef %133) #8
  br label %145

135:                                              ; preds = %128, %135
  %136 = phi i64 [ %143, %135 ], [ 0, %128 ]
  %137 = shl nuw nsw i64 %136, 1
  %138 = getelementptr inbounds i8, ptr @check_value, i64 %137
  %139 = getelementptr inbounds [8192 x i8], ptr %5, i64 0, i64 %136
  %140 = load i8, ptr %139, align 1, !tbaa !55
  %141 = zext i8 %140 to i32
  %142 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %138, i64 noundef 3, ptr noundef nonnull @.str.37, i32 noundef %141) #8
  %143 = add nuw nsw i64 %136, 1
  %144 = icmp eq i64 %143, %124
  br i1 %144, label %145, label %135, !llvm.loop !115

145:                                              ; preds = %135, %128, %132, %129, %120
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #8
  br label %151

146:                                              ; preds = %46, %113
  %147 = phi i32 [ 9, %113 ], [ %47, %46 ]
  %148 = load ptr, ptr %0, align 8, !tbaa !58
  %149 = call ptr @message_strm(i32 noundef %147) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %148, ptr noundef %149) #8
  br label %150

150:                                              ; preds = %146, %26
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %8)
  br label %151

151:                                              ; preds = %145, %119, %150
  %152 = phi i1 [ true, %150 ], [ false, %119 ], [ %127, %145 ]
  ret i1 %152
}

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_compressed_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare void @message_filters_to_str(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @tuklib_mbstr_fw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"_Bool", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!42, !44, i64 56}
!42 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !44, i64 56, !36, i64 60}
!43 = !{!"long", !37, i64 0}
!44 = !{!"int", !37, i64 0}
!45 = !{!42, !43, i64 8}
!46 = !{!42, !43, i64 16}
!47 = !{!42, !43, i64 24}
!48 = !{!42, !43, i64 32}
!49 = !{!42, !43, i64 40}
!50 = !{!42, !43, i64 0}
!51 = !{!42, !43, i64 48}
!52 = !{!42, !36, i64 60}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !37, i64 0}
!55 = !{!37, !37, i64 0}
!56 = !{!57, !44, i64 16}
!57 = !{!"", !54, i64 0, !54, i64 8, !44, i64 16, !44, i64 20, !36, i64 24, !36, i64 25, !43, i64 32}
!58 = !{!57, !54, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !44, i64 0}
!63 = !{!"", !44, i64 0, !43, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !44, i64 44, !44, i64 48}
!64 = !{!63, !43, i64 8}
!65 = !{!66, !43, i64 8}
!66 = !{!"", !54, i64 0, !43, i64 8, !43, i64 16, !54, i64 24, !43, i64 32, !43, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !44, i64 128, !44, i64 132}
!67 = !{!66, !54, i64 0}
!68 = !{!69, !43, i64 8}
!69 = !{!"", !54, i64 0, !43, i64 8, !43, i64 16, !36, i64 24}
!70 = distinct !{!70, !60, !61}
!71 = !{!69, !54, i64 0}
!72 = !{!73, !43, i64 32}
!73 = !{!"", !74, i64 0, !75, i64 120, !37, i64 256}
!74 = !{!"", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112}
!75 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128}
!76 = !{!73, !43, i64 40}
!77 = !{!73, !43, i64 48}
!78 = !{!73, !43, i64 56}
!79 = !{!73, !43, i64 64}
!80 = !{!73, !43, i64 72}
!81 = !{!73, !54, i64 0}
!82 = !{!63, !44, i64 16}
!83 = !{!73, !43, i64 80}
!84 = distinct !{!84, !60, !61}
!85 = !{!73, !43, i64 144}
!86 = !{!73, !43, i64 120}
!87 = !{!73, !43, i64 128}
!88 = !{!73, !43, i64 136}
!89 = !{!73, !43, i64 184}
!90 = !{!73, !43, i64 168}
!91 = !{!92, !44, i64 0}
!92 = !{!"", !44, i64 0, !37, i64 4, !43, i64 8, !43, i64 16, !37, i64 24}
!93 = !{!92, !43, i64 8}
!94 = !{!92, !43, i64 16}
!95 = distinct !{!95, !60, !61}
!96 = !{!69, !43, i64 16}
!97 = !{!69, !36, i64 24}
!98 = distinct !{!98, !60, !61}
!99 = !{!73, !43, i64 176}
!100 = distinct !{!100, !60, !61}
!101 = !{!43, !43, i64 0}
!102 = distinct !{!102, !60, !61}
!103 = !{!104, !44, i64 0}
!104 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !43, i64 16, !43, i64 24, !54, i64 32, !37, i64 40, !54, i64 104, !54, i64 112, !54, i64 120, !44, i64 128, !44, i64 132, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !37, i64 200, !37, i64 201, !37, i64 202, !37, i64 203, !37, i64 204, !37, i64 205, !37, i64 206, !37, i64 207}
!105 = !{!104, !44, i64 8}
!106 = !{!104, !54, i64 32}
!107 = !{!104, !44, i64 4}
!108 = !{!104, !43, i64 16}
!109 = !{!104, !43, i64 24}
!110 = !{!111, !43, i64 0}
!111 = !{!"", !43, i64 0, !54, i64 8}
!112 = !{!111, !54, i64 8}
!113 = distinct !{!113, !60, !61}
!114 = distinct !{!114, !60, !61}
!115 = distinct !{!115, !60, !61}
