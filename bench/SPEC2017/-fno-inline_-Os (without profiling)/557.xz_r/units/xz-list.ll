; ModuleID = 'xz/list.c'
source_filename = "xz/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xz_file_info = type { ptr, i64, i64, i8 }
%union.io_buf = type { [1024 x i64] }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.file_pair = type { ptr, ptr, i32, i32, i8, i8, i64 }
%struct.lzma_index_iter = type { %struct.anon.0, %struct.anon.1, [6 x %union.anon] }
%struct.anon.0 = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.1 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.block_header_info = type { i32, [3 x i8], i64, i64, [512 x i8] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @list_totals() local_unnamed_addr #0 {
  %1 = load i8, ptr @opt_robot, align 1, !tbaa !5, !range !9, !noundef !10
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @print_totals_robot() #9
  br label %12

4:                                                ; preds = %0
  %5 = load i64, ptr @totals.0, align 8, !tbaa !11
  %6 = icmp ugt i64 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = tail call i32 @message_verbosity_get() #10
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call fastcc void @print_totals_basic() #9
  br label %12

11:                                               ; preds = %7
  tail call fastcc void @print_totals_adv() #9
  br label %12

12:                                               ; preds = %4, %11, %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_totals_robot() unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #11
  %2 = load i32, ptr @totals.7, align 8, !tbaa !15
  call fastcc void @get_check_names(ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext false) #9
  %3 = load i64, ptr @totals.1, align 8, !tbaa !16
  %4 = load i64, ptr @totals.2, align 8, !tbaa !17
  %5 = load i64, ptr @totals.3, align 8, !tbaa !18
  %6 = load i64, ptr @totals.4, align 8, !tbaa !19
  %7 = call fastcc ptr @get_ratio(i64 noundef %5, i64 noundef %6) #9
  %8 = load i64, ptr @totals.5, align 8, !tbaa !20
  %9 = load i64, ptr @totals.0, align 8, !tbaa !11
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %1, i64 noundef %8, i64 noundef %9) #9
  %11 = call i32 @message_verbosity_get() #10
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load i64, ptr @totals.6, align 8, !tbaa !21
  %15 = load i8, ptr @totals.8, align 4, !tbaa !22, !range !9, !noundef !10
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.5, ptr @.str.4
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %14, ptr noundef nonnull %17) #9
  br label %19

19:                                               ; preds = %13, %0
  %20 = call i32 @putchar(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #11
  ret void
}

; Function Attrs: optsize
declare i32 @message_verbosity_get() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_totals_basic() unnamed_addr #0 {
  %1 = alloca [80 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %1, i8 45, i64 80, i1 false)
  %3 = getelementptr inbounds [80 x i8], ptr %1, i64 0, i64 79
  store i8 0, ptr %3, align 1, !tbaa !23
  %4 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %1) #9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #11
  %5 = load i32, ptr @totals.7, align 8, !tbaa !15
  call fastcc void @get_check_names(ptr noundef nonnull %2, i32 noundef %5, i1 noundef zeroext false) #9
  %6 = load i64, ptr @totals.1, align 8, !tbaa !16
  %7 = call ptr @uint64_to_str(i64 noundef %6, i32 noundef 0) #10
  %8 = load i64, ptr @totals.2, align 8, !tbaa !17
  %9 = call ptr @uint64_to_str(i64 noundef %8, i32 noundef 1) #10
  %10 = load i64, ptr @totals.3, align 8, !tbaa !18
  %11 = call ptr @uint64_to_nicestr(i64 noundef %10, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #10
  %12 = load i64, ptr @totals.4, align 8, !tbaa !19
  %13 = call ptr @uint64_to_nicestr(i64 noundef %12, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #10
  %14 = load i64, ptr @totals.3, align 8, !tbaa !18
  %15 = load i64, ptr @totals.4, align 8, !tbaa !19
  %16 = call fastcc ptr @get_ratio(i64 noundef %14, i64 noundef %15) #9
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef nonnull %16, ptr noundef nonnull %2) #9
  %18 = load i64, ptr @totals.0, align 8, !tbaa !11
  %19 = icmp eq i64 %18, 1
  %20 = select i1 %19, ptr @.str.13, ptr @.str.14
  %21 = call ptr @uint64_to_str(i64 noundef %18, i32 noundef 0) #10
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %20, ptr noundef %21) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_totals_adv() unnamed_addr #0 {
  %1 = tail call i32 @putchar(i32 noundef 10) #9
  %2 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.15) #9
  %3 = load i64, ptr @totals.0, align 8, !tbaa !11
  %4 = tail call ptr @uint64_to_str(i64 noundef %3, i32 noundef 0) #10
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %4) #9
  %6 = load i64, ptr @totals.1, align 8, !tbaa !16
  %7 = load i64, ptr @totals.2, align 8, !tbaa !17
  %8 = load i64, ptr @totals.3, align 8, !tbaa !18
  %9 = load i64, ptr @totals.4, align 8, !tbaa !19
  %10 = load i32, ptr @totals.7, align 8, !tbaa !15
  %11 = load i64, ptr @totals.5, align 8, !tbaa !20
  tail call fastcc void @print_adv_helper(i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i32 noundef %10, i64 noundef %11) #9
  %12 = tail call i32 @message_verbosity_get() #10
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = load i64, ptr @totals.6, align 8, !tbaa !21
  %16 = tail call i64 @round_up_to_mib(i64 noundef %15) #10
  %17 = tail call ptr @uint64_to_str(i64 noundef %16, i32 noundef 0) #10
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %17) #9
  %19 = load i8, ptr @totals.8, align 4, !tbaa !22, !range !9, !noundef !10
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, ptr @.str.20, ptr @.str.19
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %21) #9
  br label %23

23:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @list_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.xz_file_info, align 8
  %3 = load i32, ptr @opt_format, align 4
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #10
  br label %6

6:                                                ; preds = %5, %1
  tail call void @message_filename(ptr noundef %0) #10
  %7 = icmp eq ptr %0, @stdin_filename
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1) #10
  br label %29

9:                                                ; preds = %6
  store i8 0, ptr @opt_stdout, align 1, !tbaa !5
  store i8 1, ptr @opt_force, align 1, !tbaa !5
  %10 = tail call ptr @io_open_src(ptr noundef %0) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.list_file.xfi, i64 32, i1 false)
  %13 = call fastcc zeroext i1 @parse_indexes(ptr noundef nonnull %2, ptr noundef nonnull %10) #9
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr @opt_robot, align 1, !tbaa !5, !range !9, !noundef !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call fastcc zeroext i1 @print_info_robot(ptr noundef nonnull %2, ptr noundef nonnull %10) #9
  br i1 %18, label %26, label %25

19:                                               ; preds = %14
  %20 = tail call i32 @message_verbosity_get() #10
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call fastcc void @print_info_basic(ptr noundef nonnull %2, ptr noundef nonnull %10) #9
  br label %25

23:                                               ; preds = %19
  %24 = call fastcc zeroext i1 @print_info_adv(ptr noundef nonnull %2, ptr noundef nonnull %10) #9
  br i1 %24, label %26, label %25

25:                                               ; preds = %17, %22, %23
  call fastcc void @update_totals(ptr noundef nonnull %2) #9
  br label %26

26:                                               ; preds = %17, %25, %23
  %27 = load ptr, ptr %2, align 8, !tbaa !24
  tail call void @lzma_index_end(ptr noundef %27, ptr noundef null) #10
  br label %28

28:                                               ; preds = %26, %12
  tail call void @io_close(ptr noundef nonnull %10, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %29

29:                                               ; preds = %28, %9, %8
  ret void
}

; Function Attrs: optsize
declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @message_filename(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @io_open_src(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @parse_indexes(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %union.io_buf, align 8
  %4 = alloca %struct.lzma_stream_flags, align 8
  %5 = alloca %struct.lzma_stream_flags, align 8
  %6 = alloca %struct.lzma_stream, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !27
  %8 = load ptr, ptr @spec_fd, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.file_pair, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !28
  %11 = tail call i64 @spec_mem_get_length(ptr noundef %8, i32 noundef 3, i32 noundef %10) #10
  %12 = getelementptr inbounds [2048 x i32], ptr %3, i64 0, i64 2
  %13 = getelementptr inbounds %struct.lzma_stream_flags, ptr %5, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_stream, ptr %6, i64 0, i32 1
  %15 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [2048 x i32], ptr %3, i64 0, i64 1
  br label %17

17:                                               ; preds = %161, %2
  %18 = phi ptr [ null, %2 ], [ %162, %161 ]
  %19 = phi i64 [ %11, %2 ], [ %129, %161 ]
  %20 = icmp slt i64 %19, 24
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !30
  %23 = call ptr @message_strm(i32 noundef 9) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %22, ptr noundef %23) #10
  br label %167

24:                                               ; preds = %17
  %25 = add nsw i64 %19, -12
  br label %29

26:                                               ; preds = %50
  %27 = load ptr, ptr %1, align 8, !tbaa !30
  %28 = call ptr @message_strm(i32 noundef 9) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %27, ptr noundef %28) #10
  br label %167

29:                                               ; preds = %24, %50
  %30 = phi i64 [ %52, %50 ], [ 0, %24 ]
  %31 = phi i64 [ %53, %50 ], [ %25, %24 ]
  %32 = call zeroext i1 @io_pread(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 12, i64 noundef %31) #10
  br i1 %32, label %167, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %12, align 8, !tbaa !23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = add i64 %31, -8
  %38 = add i64 %30, 12
  %39 = add i64 %31, -12
  %40 = add nsw i64 %31, -4
  %41 = add i64 %30, 4
  %42 = load i32, ptr %16, align 4, !tbaa !23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50, !llvm.loop !31

44:                                               ; preds = %36
  %45 = add nsw i64 %31, -8
  %46 = add i64 %30, 8
  %47 = load i32, ptr %3, align 8, !tbaa !23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !llvm.loop !31

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %44, %36
  %51 = phi i64 [ %31, %36 ], [ %40, %44 ], [ %37, %49 ]
  %52 = phi i64 [ %41, %36 ], [ %46, %44 ], [ %38, %49 ]
  %53 = phi i64 [ %40, %36 ], [ %45, %44 ], [ %39, %49 ]
  %54 = icmp slt i64 %51, 16
  br i1 %54, label %26, label %29

55:                                               ; preds = %33
  %56 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %5, ptr noundef nonnull %3) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %1, align 8, !tbaa !30
  %60 = call ptr @message_strm(i32 noundef %56) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %59, ptr noundef %60) #10
  br label %167

61:                                               ; preds = %55
  %62 = load i32, ptr %5, align 8, !tbaa !33
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %1, align 8, !tbaa !30
  %66 = call ptr @message_strm(i32 noundef 8) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %65, ptr noundef %66) #10
  br label %167

67:                                               ; preds = %61
  %68 = load i64, ptr %13, align 8, !tbaa !35
  %69 = add i64 %68, 12
  %70 = icmp ult i64 %31, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load ptr, ptr %1, align 8, !tbaa !30
  %73 = call ptr @message_strm(i32 noundef 9) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %72, ptr noundef %73) #10
  br label %167

74:                                               ; preds = %67
  %75 = sub i64 %31, %68
  %76 = call i64 @hardware_memlimit_get(i32 noundef 3) #10
  %77 = icmp eq ptr %18, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = call i64 @lzma_index_memused(ptr noundef nonnull %18) #10
  %80 = icmp ugt i64 %79, %76
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @message_bug() #10
  br label %82

82:                                               ; preds = %81, %78
  %83 = sub i64 %76, %79
  br label %84

84:                                               ; preds = %82, %74
  %85 = phi i64 [ %83, %82 ], [ %76, %74 ]
  %86 = phi i64 [ %79, %82 ], [ 0, %74 ]
  %87 = call i32 @lzma_index_decoder(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef %85) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %1, align 8, !tbaa !30
  %91 = call ptr @message_strm(i32 noundef %87) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %90, ptr noundef %91) #10
  br label %167

92:                                               ; preds = %84, %97
  %93 = phi i64 [ %99, %97 ], [ %75, %84 ]
  %94 = phi i64 [ %100, %97 ], [ %68, %84 ]
  %95 = call i64 @llvm.umin.i64(i64 %94, i64 8192)
  store i64 %95, ptr %14, align 8, !tbaa !36
  %96 = call zeroext i1 @io_pread(ptr noundef %1, ptr noundef nonnull %3, i64 noundef %95, i64 noundef %93) #10
  br i1 %96, label %167, label %97

97:                                               ; preds = %92
  %98 = load i64, ptr %14, align 8, !tbaa !36
  %99 = add i64 %98, %93
  %100 = sub i64 %94, %98
  store ptr %3, ptr %6, align 8, !tbaa !38
  %101 = call i32 @lzma_code(ptr noundef nonnull %6, i32 noundef 0) #10
  switch i32 %101, label %107 [
    i32 0, label %92
    i32 1, label %102
    i32 10, label %108
  ]

102:                                              ; preds = %97
  %103 = icmp ne i64 %100, 0
  %104 = load i64, ptr %14, align 8
  %105 = icmp ne i64 %104, 0
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %108, label %116

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %102, %97, %107
  %109 = phi i32 [ %101, %107 ], [ 9, %97 ], [ 9, %102 ]
  %110 = load ptr, ptr %1, align 8, !tbaa !30
  %111 = call ptr @message_strm(i32 noundef %109) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %110, ptr noundef %111) #10
  %112 = icmp eq i32 %109, 6
  br i1 %112, label %113, label %167

113:                                              ; preds = %108
  %114 = call i64 @lzma_memusage(ptr noundef nonnull %6) #10
  %115 = call i64 @llvm.uadd.sat.i64(i64 %114, i64 %86)
  call void @message_mem_needed(i32 noundef 1, i64 noundef %115) #10
  br label %167

116:                                              ; preds = %102
  %117 = load i64, ptr %13, align 8, !tbaa !35
  %118 = add i64 %99, -12
  %119 = sub i64 %118, %117
  %120 = load ptr, ptr %7, align 8, !tbaa !27
  %121 = call i64 @lzma_index_total_size(ptr noundef %120) #10
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load ptr, ptr %1, align 8, !tbaa !30
  %125 = call ptr @message_strm(i32 noundef 9) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %124, ptr noundef %125) #10
  br label %167

126:                                              ; preds = %116
  %127 = load ptr, ptr %7, align 8, !tbaa !27
  %128 = call i64 @lzma_index_total_size(ptr noundef %127) #10
  %129 = sub i64 %119, %128
  %130 = call zeroext i1 @io_pread(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 12, i64 noundef %129) #10
  br i1 %130, label %167, label %131

131:                                              ; preds = %126
  %132 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %4, ptr noundef nonnull %3) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %1, align 8, !tbaa !30
  %136 = call ptr @message_strm(i32 noundef %132) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %135, ptr noundef %136) #10
  br label %167

137:                                              ; preds = %131
  %138 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %1, align 8, !tbaa !30
  %142 = call ptr @message_strm(i32 noundef %138) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %141, ptr noundef %142) #10
  br label %167

143:                                              ; preds = %137
  %144 = load ptr, ptr %7, align 8, !tbaa !27
  %145 = call i32 @lzma_index_stream_flags(ptr noundef %144, ptr noundef nonnull %5) #10
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @message_bug() #10
  br label %148

148:                                              ; preds = %147, %143
  %149 = load ptr, ptr %7, align 8, !tbaa !27
  %150 = call i32 @lzma_index_stream_padding(ptr noundef %149, i64 noundef %30) #10
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void @message_bug() #10
  br label %153

153:                                              ; preds = %152, %148
  br i1 %77, label %161, label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr %7, align 8, !tbaa !27
  %156 = call i32 @lzma_index_cat(ptr noundef %155, ptr noundef nonnull %18, ptr noundef null) #10
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %1, align 8, !tbaa !30
  %160 = call ptr @message_strm(i32 noundef %156) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %159, ptr noundef %160) #10
  br label %167

161:                                              ; preds = %154, %153
  %162 = load ptr, ptr %7, align 8, !tbaa !27
  store ptr null, ptr %7, align 8, !tbaa !27
  %163 = load i64, ptr %15, align 8, !tbaa !39
  %164 = add i64 %163, %30
  store i64 %164, ptr %15, align 8, !tbaa !39
  %165 = icmp sgt i64 %129, 0
  br i1 %165, label %17, label %166, !llvm.loop !40

166:                                              ; preds = %161
  call void @lzma_end(ptr noundef nonnull %6) #10
  store ptr %162, ptr %0, align 8, !tbaa !24
  br label %169

167:                                              ; preds = %126, %29, %92, %108, %113, %158, %140, %134, %123, %89, %71, %64, %58, %26, %21
  call void @lzma_end(ptr noundef nonnull %6) #10
  call void @lzma_index_end(ptr noundef %18, ptr noundef null) #10
  %168 = load ptr, ptr %7, align 8, !tbaa !27
  call void @lzma_index_end(ptr noundef %168, ptr noundef null) #10
  br label %169

169:                                              ; preds = %167, %166
  %170 = phi i1 [ true, %167 ], [ false, %166 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #11
  ret i1 %170
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @print_info_robot(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.lzma_index_iter, align 8
  %5 = alloca %struct.block_header_info, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !24
  %7 = tail call i32 @lzma_index_checks(ptr noundef %6) #10
  call fastcc void @get_check_names(ptr noundef nonnull %3, i32 noundef %7, i1 noundef zeroext false) #9
  %8 = load ptr, ptr %1, align 8, !tbaa !30
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %8) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !24
  %11 = call i64 @lzma_index_stream_count(ptr noundef %10) #10
  %12 = load ptr, ptr %0, align 8, !tbaa !24
  %13 = call i64 @lzma_index_block_count(ptr noundef %12) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !24
  %15 = call i64 @lzma_index_file_size(ptr noundef %14) #10
  %16 = load ptr, ptr %0, align 8, !tbaa !24
  %17 = call i64 @lzma_index_uncompressed_size(ptr noundef %16) #10
  %18 = load ptr, ptr %0, align 8, !tbaa !24
  %19 = call i64 @lzma_index_file_size(ptr noundef %18) #10
  %20 = load ptr, ptr %0, align 8, !tbaa !24
  %21 = call i64 @lzma_index_uncompressed_size(ptr noundef %20) #10
  %22 = call fastcc ptr @get_ratio(i64 noundef %19, i64 noundef %21) #9
  %23 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !39
  %25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, ptr noundef nonnull %22, ptr noundef nonnull %3, i64 noundef %24) #9
  %26 = call i32 @message_verbosity_get() #10
  %27 = icmp ugt i32 %26, 2
  br i1 %27, label %28, label %105

28:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %4) #11
  %29 = load ptr, ptr %0, align 8, !tbaa !24
  call void @lzma_index_iter_init(ptr noundef nonnull %4, ptr noundef %29) #10
  %30 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %4, i32 noundef 1) #10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 4
  %34 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 5
  %35 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 6
  %36 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 7
  %37 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 8
  %38 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 9
  %39 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 10
  br label %40

40:                                               ; preds = %32, %40
  %41 = load i64, ptr %33, align 8, !tbaa !41
  %42 = load i64, ptr %34, align 8, !tbaa !45
  %43 = load i64, ptr %35, align 8, !tbaa !46
  %44 = load i64, ptr %36, align 8, !tbaa !47
  %45 = load i64, ptr %37, align 8, !tbaa !48
  %46 = load i64, ptr %38, align 8, !tbaa !49
  %47 = call fastcc ptr @get_ratio(i64 noundef %45, i64 noundef %46) #9
  %48 = load ptr, ptr %4, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.lzma_stream_flags, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !51
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %51
  %53 = load i64, ptr %39, align 8, !tbaa !52
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44, i64 noundef %45, i64 noundef %46, ptr noundef nonnull %47, ptr noundef nonnull %52, i64 noundef %53) #9
  %55 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %4, i32 noundef 1) #10
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %40, label %57, !llvm.loop !53

57:                                               ; preds = %40, %28
  call void @lzma_index_iter_rewind(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %5) #11
  %58 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %4, i32 noundef 2) #10
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 4
  %62 = getelementptr inbounds %struct.lzma_index_iter, ptr %4, i64 0, i32 1
  %63 = getelementptr inbounds %struct.lzma_index_iter, ptr %4, i64 0, i32 1, i32 3
  %64 = getelementptr inbounds %struct.lzma_index_iter, ptr %4, i64 0, i32 1, i32 1
  %65 = getelementptr inbounds %struct.lzma_index_iter, ptr %4, i64 0, i32 1, i32 2
  %66 = getelementptr inbounds %struct.lzma_index_iter, ptr %4, i64 0, i32 1, i32 8
  %67 = getelementptr inbounds %struct.lzma_index_iter, ptr %4, i64 0, i32 1, i32 6
  %68 = getelementptr inbounds %struct.block_header_info, ptr %5, i64 0, i32 1
  %69 = getelementptr inbounds %struct.block_header_info, ptr %5, i64 0, i32 2
  %70 = getelementptr inbounds %struct.block_header_info, ptr %5, i64 0, i32 3
  %71 = getelementptr inbounds %struct.block_header_info, ptr %5, i64 0, i32 4
  br label %72

72:                                               ; preds = %60, %99
  %73 = call i32 @message_verbosity_get() #10
  %74 = icmp ugt i32 %73, 3
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call fastcc zeroext i1 @parse_details(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %0) #9
  br i1 %76, label %103, label %77

77:                                               ; preds = %75, %72
  %78 = load i64, ptr %61, align 8, !tbaa !41
  %79 = load i64, ptr %63, align 8, !tbaa !54
  %80 = load i64, ptr %62, align 8, !tbaa !55
  %81 = load i64, ptr %64, align 8, !tbaa !56
  %82 = load i64, ptr %65, align 8, !tbaa !57
  %83 = load i64, ptr %66, align 8, !tbaa !58
  %84 = load i64, ptr %67, align 8, !tbaa !59
  %85 = call fastcc ptr @get_ratio(i64 noundef %83, i64 noundef %84) #9
  %86 = load ptr, ptr %4, align 8, !tbaa !50
  %87 = getelementptr inbounds %struct.lzma_stream_flags, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !51
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %89
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %78, i64 noundef %79, i64 noundef %80, i64 noundef %81, i64 noundef %82, i64 noundef %83, i64 noundef %84, ptr noundef nonnull %85, ptr noundef nonnull %90) #9
  %92 = call i32 @message_verbosity_get() #10
  %93 = icmp ugt i32 %92, 3
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load i32, ptr %5, align 8, !tbaa !60
  %96 = load i64, ptr %69, align 8, !tbaa !62
  %97 = load i64, ptr %70, align 8, !tbaa !63
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @check_value, i32 noundef %95, ptr noundef nonnull %68, i64 noundef %96, i64 noundef %97, ptr noundef nonnull %71) #9
  br label %99

99:                                               ; preds = %94, %77
  %100 = call i32 @putchar(i32 noundef 10) #9
  %101 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %4, i32 noundef 2) #10
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %72, label %104, !llvm.loop !64

103:                                              ; preds = %75
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %4) #11
  br label %116

104:                                              ; preds = %99, %57
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %4) #11
  br label %105

105:                                              ; preds = %104, %2
  %106 = call i32 @message_verbosity_get() #10
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !65
  %111 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 3
  %112 = load i8, ptr %111, align 8, !tbaa !66, !range !9, !noundef !10
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, ptr @.str.5, ptr @.str.4
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %110, ptr noundef nonnull %114) #9
  br label %116

116:                                              ; preds = %103, %105, %108
  %117 = phi i1 [ true, %103 ], [ false, %108 ], [ false, %105 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #11
  ret i1 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_info_basic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = load i1, ptr @print_info_basic.headings_displayed, align 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store i1 true, ptr @print_info_basic.headings_displayed, align 1
  %6 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38) #9
  br label %7

7:                                                ; preds = %5, %2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !24
  %9 = tail call i32 @lzma_index_checks(ptr noundef %8) #10
  call fastcc void @get_check_names(ptr noundef nonnull %3, i32 noundef %9, i1 noundef zeroext false) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !24
  %11 = call i64 @lzma_index_stream_count(ptr noundef %10) #10
  %12 = call ptr @uint64_to_str(i64 noundef %11, i32 noundef 0) #10
  %13 = load ptr, ptr %0, align 8, !tbaa !24
  %14 = call i64 @lzma_index_block_count(ptr noundef %13) #10
  %15 = call ptr @uint64_to_str(i64 noundef %14, i32 noundef 1) #10
  %16 = load ptr, ptr %0, align 8, !tbaa !24
  %17 = call i64 @lzma_index_file_size(ptr noundef %16) #10
  %18 = call ptr @uint64_to_nicestr(i64 noundef %17, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #10
  %19 = load ptr, ptr %0, align 8, !tbaa !24
  %20 = call i64 @lzma_index_uncompressed_size(ptr noundef %19) #10
  %21 = call ptr @uint64_to_nicestr(i64 noundef %20, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #10
  %22 = load ptr, ptr %0, align 8, !tbaa !24
  %23 = call i64 @lzma_index_file_size(ptr noundef %22) #10
  %24 = load ptr, ptr %0, align 8, !tbaa !24
  %25 = call i64 @lzma_index_uncompressed_size(ptr noundef %24) #10
  %26 = call fastcc ptr @get_ratio(i64 noundef %23, i64 noundef %25) #9
  %27 = load ptr, ptr %1, align 8, !tbaa !30
  %28 = call i32 @tuklib_mbstr_fw(ptr noundef %12, i32 noundef 5) #10
  %29 = call i32 @tuklib_mbstr_fw(ptr noundef %15, i32 noundef 7) #10
  %30 = call i32 @tuklib_mbstr_fw(ptr noundef %18, i32 noundef 11) #10
  %31 = call i32 @tuklib_mbstr_fw(ptr noundef %21, i32 noundef 11) #10
  %32 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %26, i32 noundef 5) #10
  %33 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %3, i32 noundef 7) #10
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %28, ptr noundef %12, i32 noundef %29, ptr noundef %15, i32 noundef %30, ptr noundef %18, i32 noundef %31, ptr noundef %21, i32 noundef %32, ptr noundef nonnull %26, i32 noundef %33, ptr noundef nonnull %3, ptr noundef %27) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @print_info_adv(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.lzma_index_iter, align 8
  %4 = alloca %struct.block_header_info, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !24
  %6 = tail call i64 @lzma_index_stream_count(ptr noundef %5) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !24
  %8 = tail call i64 @lzma_index_block_count(ptr noundef %7) #10
  %9 = load ptr, ptr %0, align 8, !tbaa !24
  %10 = tail call i64 @lzma_index_file_size(ptr noundef %9) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !24
  %12 = tail call i64 @lzma_index_uncompressed_size(ptr noundef %11) #10
  %13 = load ptr, ptr %0, align 8, !tbaa !24
  %14 = tail call i32 @lzma_index_checks(ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !39
  tail call fastcc void @print_adv_helper(i64 noundef %6, i64 noundef %8, i64 noundef %10, i64 noundef %12, i32 noundef %14, i64 noundef %16) #9
  %17 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40) #9
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %3) #11
  %18 = load ptr, ptr %0, align 8, !tbaa !24
  call void @lzma_index_iter_init(ptr noundef nonnull %3, ptr noundef %18) #10
  %19 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %3, i32 noundef 1) #10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 4
  %23 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 5
  %24 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 6
  %25 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 7
  %26 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 8
  %27 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 9
  %28 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 10
  br label %29

29:                                               ; preds = %21, %74
  %30 = phi i32 [ 0, %21 ], [ %75, %74 ]
  %31 = load i64, ptr %22, align 8, !tbaa !41
  %32 = call ptr @uint64_to_str(i64 noundef %31, i32 noundef 0) #10
  %33 = load i64, ptr %23, align 8, !tbaa !45
  %34 = call ptr @uint64_to_str(i64 noundef %33, i32 noundef 1) #10
  %35 = load i64, ptr %24, align 8, !tbaa !46
  %36 = call ptr @uint64_to_str(i64 noundef %35, i32 noundef 2) #10
  %37 = load i64, ptr %25, align 8, !tbaa !47
  %38 = call ptr @uint64_to_str(i64 noundef %37, i32 noundef 3) #10
  %39 = call i32 @tuklib_mbstr_fw(ptr noundef %32, i32 noundef 6) #10
  %40 = call i32 @tuklib_mbstr_fw(ptr noundef %34, i32 noundef 9) #10
  %41 = call i32 @tuklib_mbstr_fw(ptr noundef %36, i32 noundef 15) #10
  %42 = call i32 @tuklib_mbstr_fw(ptr noundef %38, i32 noundef 15) #10
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %39, ptr noundef %32, i32 noundef %40, ptr noundef %34, i32 noundef %41, ptr noundef %36, i32 noundef %42, ptr noundef %38) #9
  %44 = load i64, ptr %26, align 8, !tbaa !48
  %45 = call ptr @uint64_to_str(i64 noundef %44, i32 noundef 0) #10
  %46 = load i64, ptr %27, align 8, !tbaa !49
  %47 = call ptr @uint64_to_str(i64 noundef %46, i32 noundef 1) #10
  %48 = load i64, ptr %26, align 8, !tbaa !48
  %49 = load i64, ptr %27, align 8, !tbaa !49
  %50 = call fastcc ptr @get_ratio(i64 noundef %48, i64 noundef %49) #9
  %51 = load ptr, ptr %3, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.lzma_stream_flags, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !51
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %54
  %56 = load i64, ptr %28, align 8, !tbaa !52
  %57 = call ptr @uint64_to_str(i64 noundef %56, i32 noundef 2) #10
  %58 = call i32 @tuklib_mbstr_fw(ptr noundef %45, i32 noundef 15) #10
  %59 = call i32 @tuklib_mbstr_fw(ptr noundef %47, i32 noundef 15) #10
  %60 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %50, i32 noundef 5) #10
  %61 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %55, i32 noundef 10) #10
  %62 = call i32 @tuklib_mbstr_fw(ptr noundef %57, i32 noundef 7) #10
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %58, ptr noundef %45, i32 noundef %59, ptr noundef %47, i32 noundef %60, ptr noundef nonnull %50, i32 noundef %61, ptr noundef nonnull %55, i32 noundef %62, ptr noundef %57) #9
  %64 = load ptr, ptr %3, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.lzma_stream_flags, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !51
  %67 = call i32 @lzma_check_size(i32 noundef %66) #10
  %68 = icmp ugt i32 %67, %30
  br i1 %68, label %69, label %74

69:                                               ; preds = %29
  %70 = load ptr, ptr %3, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.lzma_stream_flags, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !51
  %73 = call i32 @lzma_check_size(i32 noundef %72) #10
  br label %74

74:                                               ; preds = %69, %29
  %75 = phi i32 [ %73, %69 ], [ %30, %29 ]
  %76 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %3, i32 noundef 1) #10
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %29, label %78, !llvm.loop !67

78:                                               ; preds = %74
  %79 = shl i32 %75, 1
  br label %80

80:                                               ; preds = %78, %2
  %81 = phi i32 [ 0, %2 ], [ %79, %78 ]
  %82 = call i32 @message_verbosity_get() #10
  %83 = icmp ugt i32 %82, 3
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %4) #11
  %84 = load ptr, ptr %0, align 8, !tbaa !24
  %85 = call i64 @lzma_index_block_count(ptr noundef %84) #10
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %170, label %87

87:                                               ; preds = %80
  %88 = call i32 @llvm.umax.i32(i32 %81, i32 8)
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43) #9
  br i1 %83, label %90, label %93

90:                                               ; preds = %87
  %91 = add nsw i32 %88, -8
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %91, ptr noundef nonnull @.str.9) #9
  br label %93

93:                                               ; preds = %90, %87
  %94 = call i32 @putchar(i32 noundef 10) #9
  %95 = load ptr, ptr %0, align 8, !tbaa !24
  call void @lzma_index_iter_init(ptr noundef nonnull %3, ptr noundef %95) #10
  %96 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %3, i32 noundef 2) #10
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %170

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.anon.0, ptr %3, i64 0, i32 4
  %100 = getelementptr inbounds %struct.lzma_index_iter, ptr %3, i64 0, i32 1, i32 3
  %101 = getelementptr inbounds %struct.lzma_index_iter, ptr %3, i64 0, i32 1, i32 1
  %102 = getelementptr inbounds %struct.lzma_index_iter, ptr %3, i64 0, i32 1, i32 2
  %103 = getelementptr inbounds %struct.lzma_index_iter, ptr %3, i64 0, i32 1, i32 8
  %104 = getelementptr inbounds %struct.lzma_index_iter, ptr %3, i64 0, i32 1, i32 6
  %105 = getelementptr inbounds %struct.lzma_index_iter, ptr %3, i64 0, i32 1, i32 7
  %106 = getelementptr inbounds %struct.block_header_info, ptr %4, i64 0, i32 1
  %107 = getelementptr inbounds %struct.block_header_info, ptr %4, i64 0, i32 3
  %108 = getelementptr inbounds %struct.block_header_info, ptr %4, i64 0, i32 4
  br label %109

109:                                              ; preds = %98, %166
  br i1 %83, label %110, label %112

110:                                              ; preds = %109
  %111 = call fastcc zeroext i1 @parse_details(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %0) #9
  br i1 %111, label %182, label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ 11, %110 ], [ 1, %109 ]
  %114 = load i64, ptr %99, align 8, !tbaa !41
  %115 = call ptr @uint64_to_str(i64 noundef %114, i32 noundef 0) #10
  %116 = load i64, ptr %100, align 8, !tbaa !54
  %117 = call ptr @uint64_to_str(i64 noundef %116, i32 noundef 1) #10
  %118 = load i64, ptr %101, align 8, !tbaa !56
  %119 = call ptr @uint64_to_str(i64 noundef %118, i32 noundef 2) #10
  %120 = load i64, ptr %102, align 8, !tbaa !57
  %121 = call ptr @uint64_to_str(i64 noundef %120, i32 noundef 3) #10
  %122 = call i32 @tuklib_mbstr_fw(ptr noundef %115, i32 noundef 6) #10
  %123 = call i32 @tuklib_mbstr_fw(ptr noundef %117, i32 noundef 9) #10
  %124 = call i32 @tuklib_mbstr_fw(ptr noundef %119, i32 noundef 15) #10
  %125 = call i32 @tuklib_mbstr_fw(ptr noundef %121, i32 noundef 15) #10
  %126 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %122, ptr noundef %115, i32 noundef %123, ptr noundef %117, i32 noundef %124, ptr noundef %119, i32 noundef %125, ptr noundef %121) #9
  %127 = load i64, ptr %103, align 8, !tbaa !58
  %128 = call ptr @uint64_to_str(i64 noundef %127, i32 noundef 0) #10
  %129 = load i64, ptr %104, align 8, !tbaa !59
  %130 = call ptr @uint64_to_str(i64 noundef %129, i32 noundef 1) #10
  %131 = load i64, ptr %103, align 8, !tbaa !58
  %132 = load i64, ptr %104, align 8, !tbaa !59
  %133 = call fastcc ptr @get_ratio(i64 noundef %131, i64 noundef %132) #9
  %134 = load ptr, ptr %3, align 8, !tbaa !50
  %135 = getelementptr inbounds %struct.lzma_stream_flags, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !51
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %137
  %139 = call i32 @tuklib_mbstr_fw(ptr noundef %128, i32 noundef 15) #10
  %140 = call i32 @tuklib_mbstr_fw(ptr noundef %130, i32 noundef 15) #10
  %141 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %133, i32 noundef 5) #10
  %142 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %138, i32 noundef %113) #10
  %143 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %139, ptr noundef %128, i32 noundef %140, ptr noundef %130, i32 noundef %141, ptr noundef nonnull %133, i32 noundef %142, ptr noundef nonnull %138) #9
  br i1 %83, label %144, label %166

144:                                              ; preds = %112
  %145 = load i64, ptr %105, align 8, !tbaa !68
  %146 = load i32, ptr %4, align 8, !tbaa !60
  %147 = zext i32 %146 to i64
  %148 = load ptr, ptr %3, align 8, !tbaa !50
  %149 = getelementptr inbounds %struct.lzma_stream_flags, ptr %148, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !51
  %151 = call i32 @lzma_check_size(i32 noundef %150) #10
  %152 = zext i32 %151 to i64
  %153 = add nuw nsw i64 %147, %152
  %154 = sub i64 %145, %153
  %155 = load i32, ptr %4, align 8, !tbaa !60
  %156 = zext i32 %155 to i64
  %157 = call ptr @uint64_to_str(i64 noundef %156, i32 noundef 0) #10
  %158 = call ptr @uint64_to_str(i64 noundef %154, i32 noundef 1) #10
  %159 = load i64, ptr %107, align 8, !tbaa !63
  %160 = call i64 @round_up_to_mib(i64 noundef %159) #10
  %161 = call ptr @uint64_to_str(i64 noundef %160, i32 noundef 2) #10
  %162 = call i32 @tuklib_mbstr_fw(ptr noundef %157, i32 noundef 6) #10
  %163 = call i32 @tuklib_mbstr_fw(ptr noundef %158, i32 noundef 15) #10
  %164 = call i32 @tuklib_mbstr_fw(ptr noundef %161, i32 noundef 7) #10
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %88, ptr noundef nonnull @check_value, i32 noundef %162, ptr noundef %157, ptr noundef nonnull %106, i32 noundef %163, ptr noundef %158, i32 noundef %164, ptr noundef %161, ptr noundef nonnull %108) #9
  br label %166

166:                                              ; preds = %144, %112
  %167 = call i32 @putchar(i32 noundef 10) #9
  %168 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %3, i32 noundef 2) #10
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %109, label %170, !llvm.loop !69

170:                                              ; preds = %166, %93, %80
  br i1 %83, label %171, label %182

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 2
  %173 = load i64, ptr %172, align 8, !tbaa !65
  %174 = call i64 @round_up_to_mib(i64 noundef %173) #10
  %175 = call ptr @uint64_to_str(i64 noundef %174, i32 noundef 0) #10
  %176 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %175) #9
  %177 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 3
  %178 = load i8, ptr %177, align 8, !tbaa !66, !range !9, !noundef !10
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, ptr @.str.20, ptr @.str.19
  %181 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %180) #9
  br label %182

182:                                              ; preds = %110, %170, %171
  %183 = phi i1 [ false, %171 ], [ false, %170 ], [ true, %110 ]
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %3) #11
  ret i1 %183
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_totals(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr @totals.0, align 8, !tbaa !11
  %3 = add i64 %2, 1
  store i64 %3, ptr @totals.0, align 8, !tbaa !11
  %4 = load ptr, ptr %0, align 8, !tbaa !24
  %5 = tail call i64 @lzma_index_stream_count(ptr noundef %4) #10
  %6 = load i64, ptr @totals.1, align 8, !tbaa !16
  %7 = add i64 %6, %5
  store i64 %7, ptr @totals.1, align 8, !tbaa !16
  %8 = load ptr, ptr %0, align 8, !tbaa !24
  %9 = tail call i64 @lzma_index_block_count(ptr noundef %8) #10
  %10 = load i64, ptr @totals.2, align 8, !tbaa !17
  %11 = add i64 %10, %9
  store i64 %11, ptr @totals.2, align 8, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !24
  %13 = tail call i64 @lzma_index_file_size(ptr noundef %12) #10
  %14 = load i64, ptr @totals.3, align 8, !tbaa !18
  %15 = add i64 %14, %13
  store i64 %15, ptr @totals.3, align 8, !tbaa !18
  %16 = load ptr, ptr %0, align 8, !tbaa !24
  %17 = tail call i64 @lzma_index_uncompressed_size(ptr noundef %16) #10
  %18 = load i64, ptr @totals.4, align 8, !tbaa !19
  %19 = add i64 %18, %17
  store i64 %19, ptr @totals.4, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !39
  %22 = load i64, ptr @totals.5, align 8, !tbaa !20
  %23 = add i64 %22, %21
  store i64 %23, ptr @totals.5, align 8, !tbaa !20
  %24 = load ptr, ptr %0, align 8, !tbaa !24
  %25 = tail call i32 @lzma_index_checks(ptr noundef %24) #10
  %26 = load i32, ptr @totals.7, align 8, !tbaa !15
  %27 = or i32 %26, %25
  store i32 %27, ptr @totals.7, align 8, !tbaa !15
  %28 = load i64, ptr @totals.6, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !65
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i64 %30, ptr @totals.6, align 8, !tbaa !21
  br label %33

33:                                               ; preds = %32, %1
  %34 = getelementptr inbounds %struct.xz_file_info, ptr %0, i64 0, i32 3
  %35 = load i8, ptr %34, align 8, !tbaa !66, !range !9, !noundef !10
  %36 = load i8, ptr @totals.8, align 4, !tbaa !22, !range !9, !noundef !10
  %37 = and i8 %36, %35
  store i8 %37, ptr @totals.8, align 4, !tbaa !22
  ret void
}

; Function Attrs: optsize
declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_check_names(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store ptr %0, ptr %4, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 1024, ptr %5, align 8, !tbaa !70
  %6 = select i1 %2, ptr @.str.6, ptr @.str.7
  br label %8

7:                                                ; preds = %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
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
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  br label %20

20:                                               ; preds = %8, %15
  %21 = phi i8 [ 1, %15 ], [ %10, %8 ]
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 16
  br i1 %23, label %7, label %8, !llvm.loop !71
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @get_ratio(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = uitofp i64 %0 to double
  %6 = uitofp i64 %1 to double
  %7 = fdiv double %5, %6
  %8 = fcmp ogt double %7, 9.999000e+00
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %7) #10
  br label %11

11:                                               ; preds = %9, %4, %2
  %12 = phi ptr [ @.str.10, %2 ], [ @get_ratio.buf, %9 ], [ @.str.10, %4 ]
  ret ptr %12
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uint64_to_nicestr(i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_adv_helper(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #11
  call fastcc void @get_check_names(ptr noundef nonnull %7, i32 noundef %4, i1 noundef zeroext true) #9
  %8 = call ptr @uint64_to_str(i64 noundef %0, i32 noundef 0) #10
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %8) #9
  %10 = call ptr @uint64_to_str(i64 noundef %1, i32 noundef 0) #10
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %10) #9
  %12 = call ptr @uint64_to_nicestr(i64 noundef %2, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #10
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %12) #9
  %14 = call ptr @uint64_to_nicestr(i64 noundef %3, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #10
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %14) #9
  %16 = call fastcc ptr @get_ratio(i64 noundef %2, i64 noundef %3) #9
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %16) #9
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %7) #9
  %19 = call ptr @uint64_to_nicestr(i64 noundef %5, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #10
  %20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %19) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #11
  ret void
}

; Function Attrs: optsize
declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @spec_mem_get_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @message_strm(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i1 @io_pread(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_memused(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @message_bug() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_decoder(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_total_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_stream_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_stream_padding(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_cat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_checks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_stream_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_file_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_uncompressed_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_index_iter_rewind(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @parse_details(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc zeroext i1 @parse_block_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc zeroext i1 @parse_check_value(ptr noundef %0, ptr noundef %1) #9
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i1 [ true, %4 ], [ %7, %6 ]
  ret i1 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @parse_block_header(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %union.io_buf, align 8
  %6 = alloca [5 x %struct.lzma_filter], align 16
  %7 = alloca %struct.lzma_block, align 8
  %8 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !58
  %10 = load ptr, ptr %1, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = tail call i32 @lzma_check_size(i32 noundef %12) #10
  %14 = zext i32 %13 to i64
  %15 = sub i64 %9, %14
  %16 = icmp ult i64 %15, 1024
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i64, ptr %8, align 8, !tbaa !58
  %19 = load ptr, ptr %1, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.lzma_stream_flags, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = tail call i32 @lzma_check_size(i32 noundef %21) #10
  %23 = trunc i64 %18 to i32
  %24 = sub i32 %23, %22
  br label %25

25:                                               ; preds = %4, %17
  %26 = phi i32 [ %24, %17 ], [ 1024, %4 ]
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #11
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !56
  %30 = call zeroext i1 @io_pread(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %27, i64 noundef %29) #10
  br i1 %30, label %117, label %31

31:                                               ; preds = %25
  %32 = load i8, ptr %5, align 8, !tbaa !23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %112, label %34

34:                                               ; preds = %31
  store i32 0, ptr %7, align 8, !tbaa !72
  %35 = load ptr, ptr %1, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.lzma_stream_flags, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct.lzma_block, ptr %7, i64 0, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !74
  %39 = getelementptr inbounds %struct.lzma_block, ptr %7, i64 0, i32 5
  store ptr %6, ptr %39, align 8, !tbaa !75
  %40 = zext i8 %32 to i32
  %41 = shl nuw nsw i32 %40, 2
  %42 = add nuw nsw i32 %41, 4
  %43 = getelementptr inbounds %struct.lzma_block, ptr %7, i64 0, i32 1
  store i32 %42, ptr %43, align 4, !tbaa !76
  %44 = icmp ugt i32 %42, %26
  br i1 %44, label %112, label %45

45:                                               ; preds = %34
  %46 = call i32 @lzma_block_header_decode(ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %5) #10
  switch i32 %46, label %47 [
    i32 0, label %48
    i32 8, label %113
    i32 9, label %112
  ]

47:                                               ; preds = %45
  call void @message_bug() #10
  br label %48

48:                                               ; preds = %47, %45
  %49 = getelementptr inbounds %struct.lzma_block, ptr %7, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !77
  %51 = icmp eq i64 %50, -1
  %52 = select i1 %51, i8 45, i8 99
  %53 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 1
  store i8 %52, ptr %53, align 4, !tbaa !23
  %54 = getelementptr inbounds %struct.lzma_block, ptr %7, i64 0, i32 4
  %55 = load i64, ptr %54, align 8
  %56 = icmp eq i64 %55, -1
  %57 = select i1 %56, i8 45, i8 117
  %58 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 1, i64 1
  store i8 %57, ptr %58, align 1, !tbaa !23
  %59 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 1, i64 2
  store i8 0, ptr %59, align 2, !tbaa !23
  %60 = icmp ne i64 %50, -1
  %61 = icmp ne i64 %55, -1
  %62 = select i1 %60, i1 %61, i1 false
  %63 = getelementptr inbounds %struct.xz_file_info, ptr %3, i64 0, i32 3
  %64 = load i8, ptr %63, align 8, !tbaa !66, !range !9, !noundef !10
  %65 = icmp ne i8 %64, 0
  %66 = and i1 %62, %65
  %67 = zext i1 %66 to i8
  store i8 %67, ptr %63, align 8, !tbaa !66
  %68 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !68
  %70 = call i32 @lzma_block_compressed_size(ptr noundef nonnull %7, i64 noundef %69) #10
  switch i32 %70, label %89 [
    i32 0, label %71
    i32 9, label %78
  ]

71:                                               ; preds = %48
  %72 = load i64, ptr %54, align 8, !tbaa !78
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %90, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 6
  %76 = load i64, ptr %75, align 8, !tbaa !59
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %74, %48
  %79 = load i64, ptr %6, align 16, !tbaa !79
  %80 = icmp eq i64 %79, -1
  br i1 %80, label %112, label %81

81:                                               ; preds = %78, %81
  %82 = phi i64 [ %85, %81 ], [ 0, %78 ]
  %83 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %6, i64 0, i64 %82, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !81
  call void @free(ptr noundef %84) #10
  %85 = add i64 %82, 1
  %86 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %6, i64 0, i64 %85
  %87 = load i64, ptr %86, align 16, !tbaa !79
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %112, label %81, !llvm.loop !82

89:                                               ; preds = %48
  call void @message_bug() #10
  br label %90

90:                                               ; preds = %71, %74, %89
  %91 = load i32, ptr %43, align 4, !tbaa !76
  store i32 %91, ptr %2, align 8, !tbaa !60
  %92 = load i64, ptr %49, align 8, !tbaa !77
  %93 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 2
  store i64 %92, ptr %93, align 8, !tbaa !62
  %94 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %6) #10
  %95 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 3
  store i64 %94, ptr %95, align 8, !tbaa !63
  %96 = getelementptr inbounds %struct.xz_file_info, ptr %3, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !65
  %98 = icmp ult i64 %97, %94
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i64 %94, ptr %96, align 8, !tbaa !65
  br label %100

100:                                              ; preds = %99, %90
  %101 = getelementptr inbounds %struct.block_header_info, ptr %2, i64 0, i32 4
  call void @message_filters_to_str(ptr noundef nonnull %101, ptr noundef nonnull %6, i1 noundef zeroext false) #10
  %102 = load i64, ptr %6, align 16, !tbaa !79
  %103 = icmp eq i64 %102, -1
  br i1 %103, label %117, label %104

104:                                              ; preds = %100, %104
  %105 = phi i64 [ %108, %104 ], [ 0, %100 ]
  %106 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %6, i64 0, i64 %105, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !81
  call void @free(ptr noundef %107) #10
  %108 = add i64 %105, 1
  %109 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %6, i64 0, i64 %108
  %110 = load i64, ptr %109, align 16, !tbaa !79
  %111 = icmp eq i64 %110, -1
  br i1 %111, label %117, label %104, !llvm.loop !83

112:                                              ; preds = %81, %78, %45, %34, %31
  br label %113

113:                                              ; preds = %45, %112
  %114 = phi i32 [ 9, %112 ], [ %46, %45 ]
  %115 = load ptr, ptr %0, align 8, !tbaa !30
  %116 = call ptr @message_strm(i32 noundef %114) #10
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %115, ptr noundef %116) #10
  br label %117

117:                                              ; preds = %104, %113, %100, %25
  %118 = phi i1 [ true, %25 ], [ false, %100 ], [ true, %113 ], [ false, %104 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #11
  ret i1 %118
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @parse_check_value(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %union.io_buf, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.lzma_stream_flags, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 2960685, ptr @check_value, align 16
  br label %37

9:                                                ; preds = %2
  %10 = tail call i32 @lzma_check_size(i32 noundef %6) #10
  %11 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.lzma_index_iter, ptr %1, i64 0, i32 1, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !58
  %15 = zext i32 %10 to i64
  %16 = sub i64 %12, %15
  %17 = add i64 %16, %14
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #11
  %18 = call zeroext i1 @io_pread(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %15, i64 noundef %17) #10
  br i1 %18, label %36, label %19

19:                                               ; preds = %9
  switch i32 %10, label %26 [
    i32 4, label %20
    i32 8, label %23
    i32 0, label %36
  ]

20:                                               ; preds = %19
  %21 = load i32, ptr %3, align 8, !tbaa !23
  %22 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.35, i32 noundef %21) #10
  br label %36

23:                                               ; preds = %19
  %24 = load i64, ptr %3, align 8, !tbaa !23
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.36, i64 noundef %24) #10
  br label %36

26:                                               ; preds = %19, %26
  %27 = phi i64 [ %34, %26 ], [ 0, %19 ]
  %28 = shl nuw nsw i64 %27, 1
  %29 = getelementptr inbounds i8, ptr @check_value, i64 %28
  %30 = getelementptr inbounds [8192 x i8], ptr %3, i64 0, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !23
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %29, i64 noundef 3, ptr noundef nonnull @.str.37, i32 noundef %32) #10
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %36, label %26, !llvm.loop !84

36:                                               ; preds = %26, %19, %20, %23, %9
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #11
  br label %37

37:                                               ; preds = %36, %8
  %38 = phi i1 [ false, %8 ], [ %18, %36 ]
  ret i1 %38
}

; Function Attrs: optsize
declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_block_compressed_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @message_filters_to_str(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tuklib_mbstr_fw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"_Bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !14, i64 56, !6, i64 60}
!13 = !{!"long", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!12, !14, i64 56}
!16 = !{!12, !13, i64 8}
!17 = !{!12, !13, i64 16}
!18 = !{!12, !13, i64 24}
!19 = !{!12, !13, i64 32}
!20 = !{!12, !13, i64 40}
!21 = !{!12, !13, i64 48}
!22 = !{!12, !6, i64 60}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"", !26, i64 0, !13, i64 8, !13, i64 16, !6, i64 24}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!29, !14, i64 16}
!29 = !{!"", !26, i64 0, !26, i64 8, !14, i64 16, !14, i64 20, !6, i64 24, !6, i64 25, !13, i64 32}
!30 = !{!29, !26, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !14, i64 0}
!34 = !{!"", !14, i64 0, !13, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !14, i64 44, !14, i64 48}
!35 = !{!34, !13, i64 8}
!36 = !{!37, !13, i64 8}
!37 = !{!"", !26, i64 0, !13, i64 8, !13, i64 16, !26, i64 24, !13, i64 32, !13, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !26, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !14, i64 128, !14, i64 132}
!38 = !{!37, !26, i64 0}
!39 = !{!25, !13, i64 8}
!40 = distinct !{!40, !32}
!41 = !{!42, !13, i64 32}
!42 = !{!"", !43, i64 0, !44, i64 120, !7, i64 256}
!43 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112}
!44 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !26, i64 128}
!45 = !{!42, !13, i64 40}
!46 = !{!42, !13, i64 48}
!47 = !{!42, !13, i64 56}
!48 = !{!42, !13, i64 64}
!49 = !{!42, !13, i64 72}
!50 = !{!42, !26, i64 0}
!51 = !{!34, !14, i64 16}
!52 = !{!42, !13, i64 80}
!53 = distinct !{!53, !32}
!54 = !{!42, !13, i64 144}
!55 = !{!42, !13, i64 120}
!56 = !{!42, !13, i64 128}
!57 = !{!42, !13, i64 136}
!58 = !{!42, !13, i64 184}
!59 = !{!42, !13, i64 168}
!60 = !{!61, !14, i64 0}
!61 = !{!"", !14, i64 0, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24}
!62 = !{!61, !13, i64 8}
!63 = !{!61, !13, i64 16}
!64 = distinct !{!64, !32}
!65 = !{!25, !13, i64 16}
!66 = !{!25, !6, i64 24}
!67 = distinct !{!67, !32}
!68 = !{!42, !13, i64 176}
!69 = distinct !{!69, !32}
!70 = !{!13, !13, i64 0}
!71 = distinct !{!71, !32}
!72 = !{!73, !14, i64 0}
!73 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !13, i64 16, !13, i64 24, !26, i64 32, !7, i64 40, !26, i64 104, !26, i64 112, !26, i64 120, !14, i64 128, !14, i64 132, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !7, i64 200, !7, i64 201, !7, i64 202, !7, i64 203, !7, i64 204, !7, i64 205, !7, i64 206, !7, i64 207}
!74 = !{!73, !14, i64 8}
!75 = !{!73, !26, i64 32}
!76 = !{!73, !14, i64 4}
!77 = !{!73, !13, i64 16}
!78 = !{!73, !13, i64 24}
!79 = !{!80, !13, i64 0}
!80 = !{!"", !13, i64 0, !26, i64 8}
!81 = !{!80, !26, i64 8}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32}
