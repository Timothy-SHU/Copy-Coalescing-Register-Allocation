; ModuleID = 'xz/message.c'
source_filename = "xz/message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

@verbosity = internal unnamed_addr global i32 2, align 4
@files_pos = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Internal error (bug)\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"No integrity check; not verifying file integrity\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Unsupported type of integrity check; not verifying file integrity\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Memory usage limit reached\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"File format not recognized\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Unsupported options\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unexpected end of input\00", align 1
@opt_mode = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"%s B\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s MiB\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"hc3\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"hc4\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"bt2\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"bt3\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"bt4\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"lzma%c=dict=%s\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c",lc=%u,lp=%u,pb=%u,mode=%s,nice=%u,mf=%s,depth=%u\00", align 1
@message_filters_to_str.bcj_names = internal constant [6 x [9 x i8]] [[9 x i8] c"x86\00\00\00\00\00\00", [9 x i8] c"powerpc\00\00", [9 x i8] c"ia64\00\00\00\00\00", [9 x i8] c"arm\00\00\00\00\00\00", [9 x i8] c"armthumb\00", [9 x i8] c"sparc\00\00\00\00"], align 16
@.str.26 = private unnamed_addr constant [10 x i8] c"=start=%u\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"delta=dist=%u\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [22 x i8] c"%s: Filter chain: %s\0A\00", align 1
@progname = external local_unnamed_addr global ptr, align 8
@opt_robot = external local_unnamed_addr global i8, align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"XZ_VERSION=%u\0ALIBLZMA_VERSION=%u\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"liblzma %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [82 x i8] c"Usage: %s [OPTION]... [FILE]...\0ACompress or decompress FILEs in the .xz format.\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c" Operation mode:\0A\00", align 1
@.str.36 = private unnamed_addr constant [190 x i8] c"  -z, --compress      force compression\0A  -d, --decompress    force decompression\0A  -t, --test          test compressed file integrity\0A  -l, --list          list information about .xz files\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"\0A Operation modifiers:\0A\00", align 1
@.str.38 = private unnamed_addr constant [206 x i8] c"  -k, --keep          keep (don't delete) input files\0A  -f, --force         force overwrite of output file and (de)compress links\0A  -c, --stdout        write to standard output and don't delete input files\00", align 1
@.str.39 = private unnamed_addr constant [431 x i8] c"      --no-sparse     do not create sparse files when decompressing\0A  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files\0A      --files[=FILE]  read filenames to process from FILE; if FILE is\0A                      omitted, filenames are read from the standard input;\0A                      filenames must be terminated with the newline character\0A      --files0[=FILE] like --files but use the null character as terminator\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"\0A Basic file format and compression options:\0A\00", align 1
@.str.41 = private unnamed_addr constant [272 x i8] c"  -F, --format=FMT    file format to encode or decode; possible values are\0A                      `auto' (default), `xz', `lzma', and `raw'\0A  -C, --check=CHECK   integrity check type: `none' (use with caution),\0A                      `crc32', `crc64' (default), or `sha256'\00", align 1
@.str.42 = private unnamed_addr constant [157 x i8] c"  -0 ... -9           compression preset; default is 6; take compressor *and*\0A                      decompressor memory usage into account before using 7-9!\00", align 1
@.str.43 = private unnamed_addr constant [150 x i8] c"  -e, --extreme       try to improve compression ratio by using more CPU time;\0A                      does not affect decompressor memory requirements\00", align 1
@.str.44 = private unnamed_addr constant [244 x i8] c"      --memlimit-compress=LIMIT\0A      --memlimit-decompress=LIMIT\0A  -M, --memlimit=LIMIT\0A                      set memory usage limit for compression, decompression,\0A                      or both; LIMIT is in bytes, % of RAM, or 0 for defaults\00", align 1
@.str.45 = private unnamed_addr constant [157 x i8] c"      --no-adjust     if compression settings exceed the memory usage limit,\0A                      give an error instead of adjusting the settings downwards\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"\0A Custom filter chain for compression (alternative for using presets):\00", align 1
@.str.47 = private unnamed_addr constant [824 x i8] c"\0A  --lzma1[=OPTS]      LZMA1 or LZMA2; OPTS is a comma-separated list of zero or\0A  --lzma2[=OPTS]      more of the following options (valid values; default):\0A                        preset=PRE reset options to a preset (0-9[e])\0A                        dict=NUM   dictionary size (4KiB - 1536MiB; 8MiB)\0A                        lc=NUM     number of literal context bits (0-4; 3)\0A                        lp=NUM     number of literal position bits (0-4; 0)\0A                        pb=NUM     number of position bits (0-4; 2)\0A                        mode=MODE  compression mode (fast, normal; normal)\0A                        nice=NUM   nice length of a match (2-273; 64)\0A                        mf=NAME    match finder (hc3, hc4, bt2, bt3, bt4; bt4)\0A                        depth=NUM  maximum search depth; 0=automatic (default)\00", align 1
@.str.48 = private unnamed_addr constant [457 x i8] c"\0A  --x86[=OPTS]        x86 BCJ filter (32-bit and 64-bit)\0A  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)\0A  --ia64[=OPTS]       IA-64 (Itanium) BCJ filter\0A  --arm[=OPTS]        ARM BCJ filter (little endian only)\0A  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)\0A  --sparc[=OPTS]      SPARC BCJ filter\0A                      Valid OPTS for all BCJ filters:\0A                        start=NUM  start offset for conversions (default=0)\00", align 1
@.str.49 = private unnamed_addr constant [210 x i8] c"\0A  --delta[=OPTS]      Delta filter; valid OPTS (valid values; default):\0A                        dist=NUM   distance between bytes being subtracted\0A                                   from each other (1-256; 1)\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"\0A Other options:\0A\00", align 1
@.str.51 = private unnamed_addr constant [148 x i8] c"  -q, --quiet         suppress warnings; specify twice to suppress errors too\0A  -v, --verbose       be verbose; specify twice for even more verbose\00", align 1
@.str.52 = private unnamed_addr constant [63 x i8] c"  -Q, --no-warn       make warnings not affect the exit status\00", align 1
@.str.53 = private unnamed_addr constant [73 x i8] c"      --robot         use machine-parsable messages (useful for scripts)\00", align 1
@.str.55 = private unnamed_addr constant [131 x i8] c"      --info-memory   display the total amount of RAM and the currently active\0A                      memory usage limits, and exit\00", align 1
@.str.56 = private unnamed_addr constant [130 x i8] c"  -h, --help          display the short help (lists only the basic options)\0A  -H, --long-help     display this long help and exit\00", align 1
@.str.57 = private unnamed_addr constant [133 x i8] c"  -h, --help          display this short help and exit\0A  -H, --long-help     display the long help (lists also the advanced options)\00", align 1
@.str.58 = private unnamed_addr constant [58 x i8] c"  -V, --version       display the version number and exit\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Report bugs to <%s>.\0A\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"support@spec.org\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"CPU2017 xz benchmark\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"http://www.spec.org/cpu2017/\00", align 1
@uint32_to_optstr.buf = internal global [16 x i8] zeroinitializer, align 16
@.str.65 = private unnamed_addr constant [6 x i8] c"%uMiB\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%uKiB\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@str = private unnamed_addr constant [48 x i8] c"xz (CPU2017 xz benchmark) 5.0.5benchmarkcpu2017\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @message_init() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_increase() local_unnamed_addr #1 {
  %1 = load i32, ptr @verbosity, align 4, !tbaa !5
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = add nuw nsw i32 %1, 1
  store i32 %4, ptr @verbosity, align 4, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_decrease() local_unnamed_addr #1 {
  %1 = load i32, ptr @verbosity, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = add nsw i32 %1, -1
  store i32 %4, ptr @verbosity, align 4, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @message_verbosity_get() local_unnamed_addr #2 {
  %1 = load i32, ptr @verbosity, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @message_set_files(i32 noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_filename(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @files_pos, align 4, !tbaa !5
  %3 = add i32 %2, 1
  store i32 %3, ptr @files_pos, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @message_progress_start(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @message_progress_update() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @message_progress_end(i1 noundef zeroext %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @message(i32 noundef %0, ptr nocapture noundef readnone %1, ...) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_warning(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #4 {
  tail call void @set_exit_status(i32 noundef 2) #10
  ret void
}

; Function Attrs: optsize
declare void @set_exit_status(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_error(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #4 {
  tail call void @set_exit_status(i32 noundef 1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_fatal(ptr nocapture readnone %0, ...) local_unnamed_addr #4 {
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  ret void
}

; Function Attrs: optsize
declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_bug() local_unnamed_addr #4 {
  tail call void (ptr, ...) @message_fatal(ptr nonnull poison) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_signal_handler() local_unnamed_addr #4 {
  tail call void (ptr, ...) @message_fatal(ptr nonnull poison) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @message_strm(i32 noundef %0) local_unnamed_addr #4 {
  switch i32 %0, label %10 [
    i32 2, label %11
    i32 3, label %2
    i32 5, label %3
    i32 6, label %5
    i32 7, label %6
    i32 8, label %7
    i32 9, label %8
    i32 10, label %9
  ]

2:                                                ; preds = %1
  br label %11

3:                                                ; preds = %1
  %4 = tail call ptr @strerror(i32 noundef 12) #10
  br label %11

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %1, %10, %9, %8, %7, %6, %5, %3, %2
  %12 = phi ptr [ @.str, %10 ], [ @.str.8, %9 ], [ @.str.7, %8 ], [ @.str.6, %7 ], [ @.str.5, %6 ], [ @.str.4, %5 ], [ %4, %3 ], [ @.str.3, %2 ], [ @.str.2, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_mem_needed(i32 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = alloca [128 x i8], align 16
  %4 = load i32, ptr @verbosity, align 4, !tbaa !5
  %5 = icmp ult i32 %4, %0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @round_up_to_mib(i64 noundef %1) #10
  %8 = load i32, ptr @opt_mode, align 4, !tbaa !5
  %9 = tail call i64 @hardware_memlimit_get(i32 noundef %8) #10
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @uint64_to_str(i64 noundef %7, i32 noundef 0) #10
  br label %23

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %14 = icmp ult i64 %9, 1048576
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i64 @round_up_to_mib(i64 noundef %9) #10
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i64 [ %16, %15 ], [ %9, %13 ]
  %19 = phi ptr [ @.str.11, %15 ], [ @.str.10, %13 ]
  %20 = tail call ptr @uint64_to_str(i64 noundef %18, i32 noundef 1) #10
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 128, ptr noundef nonnull %19, ptr noundef %20) #10
  %22 = tail call ptr @uint64_to_str(i64 noundef %7, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  br label %23

23:                                               ; preds = %11, %17, %2
  ret void
}

; Function Attrs: optsize
declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_filters_to_str(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr %0, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 512, ptr %5, align 8, !tbaa !11
  %6 = load i64, ptr %1, align 8, !tbaa !13
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %65, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void

9:                                                ; preds = %3, %65
  %10 = phi ptr [ %67, %65 ], [ %1, %3 ]
  %11 = phi i64 [ %66, %65 ], [ 0, %3 ]
  %12 = icmp eq i64 %11, 0
  %13 = select i1 %12, ptr @.str.14, ptr @.str.15
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %13) #10
  %14 = load i64, ptr %10, align 8, !tbaa !13
  switch i64 %14, label %64 [
    i64 4611686018427387905, label %15
    i64 33, label %15
    i64 4, label %49
    i64 5, label %49
    i64 6, label %49
    i64 7, label %49
    i64 8, label %49
    i64 9, label %49
    i64 3, label %59
  ]

15:                                               ; preds = %9, %9
  %16 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %11, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  br i1 %2, label %18, label %32

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, ptr @.str.17, ptr @.str.18
  %23 = icmp eq i32 %20, 1
  %24 = select i1 %23, ptr @.str.16, ptr %22
  %25 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !18
  switch i32 %26, label %31 [
    i32 3, label %32
    i32 4, label %27
    i32 18, label %28
    i32 19, label %29
    i32 20, label %30
  ]

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %32

29:                                               ; preds = %18
  br label %32

30:                                               ; preds = %18
  br label %32

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %18, %27, %28, %29, %30, %31, %15
  %33 = phi ptr [ %24, %31 ], [ %24, %30 ], [ %24, %29 ], [ %24, %28 ], [ %24, %27 ], [ null, %15 ], [ %24, %18 ]
  %34 = phi ptr [ @.str.18, %31 ], [ @.str.23, %30 ], [ @.str.22, %29 ], [ @.str.21, %28 ], [ @.str.20, %27 ], [ null, %15 ], [ @.str.19, %18 ]
  %35 = icmp eq i64 %14, 33
  %36 = select i1 %35, i32 50, i32 49
  %37 = load i32, ptr %17, align 8, !tbaa !19
  call fastcc void @uint32_to_optstr(i32 noundef %37) #11
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.24, i32 noundef %36, ptr noundef nonnull @uint32_to_optstr.buf) #10
  br i1 %2, label %38, label %65

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !20
  %41 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !21
  %43 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !22
  %45 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !23
  %47 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 9
  %48 = load i32, ptr %47, align 4, !tbaa !24
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef %40, i32 noundef %42, i32 noundef %44, ptr noundef %33, i32 noundef %46, ptr noundef %34, i32 noundef %48) #10
  br label %65

49:                                               ; preds = %9, %9, %9, %9, %9, %9
  %50 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %11, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = add nsw i64 %14, -4
  %53 = getelementptr inbounds [6 x [9 x i8]], ptr @message_filters_to_str.bcj_names, i64 0, i64 %52
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %53) #10
  %54 = icmp eq ptr %51, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %51, align 4, !tbaa !25
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.26, i32 noundef %56) #10
  br label %65

59:                                               ; preds = %9
  %60 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %11, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !15
  %62 = getelementptr inbounds %struct.lzma_options_delta, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !27
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.27, i32 noundef %63) #10
  br label %65

64:                                               ; preds = %9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #10
  br label %65

65:                                               ; preds = %49, %55, %58, %32, %38, %59, %64
  %66 = add i64 %11, 1
  %67 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !13
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %8, label %9, !llvm.loop !29
}

; Function Attrs: optsize
declare void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @uint32_to_optstr(i32 noundef %0) unnamed_addr #8 {
  %2 = and i32 %0, 1048575
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = lshr exact i32 %0, 20
  %6 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %5) #10
  br label %15

7:                                                ; preds = %1
  %8 = and i32 %0, 1023
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = lshr exact i32 %0, 10
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %11) #10
  br label %15

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %0) #10
  br label %15

15:                                               ; preds = %10, %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_filters_show(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [512 x i8], align 16
  %4 = load i32, ptr @verbosity, align 4, !tbaa !5
  %5 = icmp ult i32 %4, %0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #12
  call void @message_filters_to_str(ptr noundef nonnull %3, ptr noundef %1, i1 noundef zeroext true) #11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !9
  %8 = load ptr, ptr @progname, align 8, !tbaa !9
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef %8, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #12
  br label %10

10:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @message_try_help() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_version() local_unnamed_addr #4 {
  %1 = load i8, ptr @opt_robot, align 1, !tbaa !31, !range !33, !noundef !34
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @lzma_version_number() #10
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 50000056, i32 noundef %4) #11
  br label %10

6:                                                ; preds = %0
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %8 = tail call ptr @lzma_version_string() #10
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %8) #11
  br label %10

10:                                               ; preds = %6, %3
  %11 = load i32, ptr @verbosity, align 4, !tbaa !5
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %13) #10
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @lzma_version_number() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @lzma_version_string() local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @message_help(i1 noundef zeroext %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @progname, align 8, !tbaa !9
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef %2) #11
  br i1 %0, label %4, label %26

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.34) #11
  %6 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.35) #11
  %7 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36) #11
  %8 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.37) #11
  %9 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38) #11
  %10 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.39) #11
  %11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40) #11
  %12 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.41) #11
  %13 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42) #11
  %14 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43) #11
  %15 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.44) #11
  %16 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.45) #11
  %17 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.46) #11
  %18 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.47) #11
  %19 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.48) #11
  %20 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.49) #11
  %21 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.50) #11
  %22 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.51) #11
  %23 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.52) #11
  %24 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.53) #11
  %25 = tail call i32 @putchar(i32 10)
  br label %31

26:                                               ; preds = %1
  %27 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36) #11
  %28 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38) #11
  %29 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42) #11
  %30 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43) #11
  br label %31

31:                                               ; preds = %26, %4
  %32 = phi ptr [ @.str.51, %26 ], [ @.str.55, %4 ]
  %33 = phi ptr [ @.str.57, %26 ], [ @.str.56, %4 ]
  %34 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %32) #11
  %35 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %33) #11
  %36 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.58) #11
  %37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.59) #11
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull @.str.61) #11
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #11
  %40 = load i32, ptr @verbosity, align 4, !tbaa !5
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %42) #10
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { cold optsize }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"", !12, i64 0, !10, i64 8}
!15 = !{!14, !10, i64 8}
!16 = !{!17, !6, i64 32}
!17 = !{!"", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !10, i64 96, !10, i64 104}
!18 = !{!17, !6, i64 40}
!19 = !{!17, !6, i64 0}
!20 = !{!17, !6, i64 20}
!21 = !{!17, !6, i64 24}
!22 = !{!17, !6, i64 28}
!23 = !{!17, !6, i64 36}
!24 = !{!17, !6, i64 44}
!25 = !{!26, !6, i64 0}
!26 = !{!"", !6, i64 0}
!27 = !{!28, !6, i64 4}
!28 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !10, i64 24, !10, i64 32}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !32, i64 0}
!32 = !{!"_Bool", !7, i64 0}
!33 = !{i8 0, i8 2}
!34 = !{}
