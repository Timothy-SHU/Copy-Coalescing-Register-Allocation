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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_init() local_unnamed_addr #0 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_increase() local_unnamed_addr #1 !prof !34 {
  %1 = load i32, ptr @verbosity, align 4, !tbaa !35
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = add nuw nsw i32 %1, 1
  store i32 %4, ptr @verbosity, align 4, !tbaa !35
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_decrease() local_unnamed_addr #1 !prof !34 {
  %1 = load i32, ptr @verbosity, align 4, !tbaa !35
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = add nsw i32 %1, -1
  store i32 %4, ptr @verbosity, align 4, !tbaa !35
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @message_verbosity_get() local_unnamed_addr #2 !prof !34 {
  %1 = load i32, ptr @verbosity, align 4, !tbaa !35
  ret i32 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_set_files(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_filename(ptr noundef %0) local_unnamed_addr #1 !prof !34 {
  %2 = load i32, ptr @files_pos, align 4, !tbaa !35
  %3 = add i32 %2, 1
  store i32 %3, ptr @files_pos, align 4, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_start(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_update() local_unnamed_addr #0 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_end(i1 noundef zeroext %0) local_unnamed_addr #0 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message(i32 noundef %0, ptr nocapture noundef readnone %1, ...) local_unnamed_addr #0 !prof !34 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @message_warning(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #4 !prof !34 {
  tail call void @set_exit_status(i32 noundef 2) #9
  ret void
}

declare void @set_exit_status(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @message_error(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #4 !prof !34 {
  tail call void @set_exit_status(i32 noundef 1) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @message_fatal(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #4 !prof !34 {
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  ret void
}

declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @message_bug() local_unnamed_addr #4 !prof !34 {
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @message_signal_handler() local_unnamed_addr #4 !prof !34 {
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @message_strm(i32 noundef %0) local_unnamed_addr #4 !prof !34 {
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
  %4 = tail call ptr @strerror(i32 noundef 12) #9
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

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local void @message_mem_needed(i32 noundef %0, i64 noundef %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca [128 x i8], align 16
  %4 = load i32, ptr @verbosity, align 4, !tbaa !35
  %5 = icmp ult i32 %4, %0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @round_up_to_mib(i64 noundef %1) #9
  %8 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %9 = tail call i64 @hardware_memlimit_get(i32 noundef %8) #9
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @uint64_to_str(i64 noundef %7, i32 noundef 0) #9
  br label %23

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
  %14 = icmp ult i64 %9, 1048576
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i64 @round_up_to_mib(i64 noundef %9) #9
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i64 [ %16, %15 ], [ %9, %13 ]
  %19 = phi ptr [ @.str.11, %15 ], [ @.str.10, %13 ]
  %20 = tail call ptr @uint64_to_str(i64 noundef %18, i32 noundef 1) #9
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 128, ptr noundef nonnull %19, ptr noundef %20) #9
  %22 = tail call ptr @uint64_to_str(i64 noundef %7, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  br label %23

23:                                               ; preds = %11, %17, %2
  ret void
}

declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #5

declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #5

declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @message_filters_to_str(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #4 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store ptr %0, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 512, ptr %5, align 8, !tbaa !41
  %6 = load i64, ptr %1, align 8, !tbaa !43
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %79, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void

9:                                                ; preds = %3, %79
  %10 = phi ptr [ %81, %79 ], [ %1, %3 ]
  %11 = phi i64 [ %80, %79 ], [ 0, %3 ]
  %12 = icmp eq i64 %11, 0
  %13 = select i1 %12, ptr @.str.14, ptr @.str.15
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %13) #9
  %14 = load i64, ptr %10, align 8, !tbaa !43
  switch i64 %14, label %78 [
    i64 4611686018427387905, label %15
    i64 33, label %15
    i64 4, label %63
    i64 5, label %63
    i64 6, label %63
    i64 7, label %63
    i64 8, label %63
    i64 9, label %63
    i64 3, label %73
  ]

15:                                               ; preds = %9, %9
  %16 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %11, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  br i1 %2, label %18, label %32

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, ptr @.str.17, ptr @.str.18
  %23 = icmp eq i32 %20, 1
  %24 = select i1 %23, ptr @.str.16, ptr %22
  %25 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !48
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
  %37 = load i32, ptr %17, align 8, !tbaa !49
  %38 = and i32 %37, 1048575
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = lshr exact i32 %37, 20
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %41) #9
  br label %51

43:                                               ; preds = %32
  %44 = and i32 %37, 1023
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = lshr exact i32 %37, 10
  %48 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %47) #9
  br label %51

49:                                               ; preds = %43
  %50 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %37) #9
  br label %51

51:                                               ; preds = %40, %46, %49
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.24, i32 noundef %36, ptr noundef nonnull @uint32_to_optstr.buf) #9
  br i1 %2, label %52, label %79

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !52
  %59 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 7
  %60 = load i32, ptr %59, align 4, !tbaa !53
  %61 = getelementptr inbounds %struct.lzma_options_lzma, ptr %17, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !54
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef %54, i32 noundef %56, i32 noundef %58, ptr noundef %33, i32 noundef %60, ptr noundef %34, i32 noundef %62) #9
  br label %79

63:                                               ; preds = %9, %9, %9, %9, %9, %9
  %64 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %11, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = add i64 %14, -4
  %67 = getelementptr inbounds [6 x [9 x i8]], ptr @message_filters_to_str.bcj_names, i64 0, i64 %66
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %67) #9
  %68 = icmp eq ptr %65, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %65, align 4, !tbaa !55
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.26, i32 noundef %70) #9
  br label %79

73:                                               ; preds = %9
  %74 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %11, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = getelementptr inbounds %struct.lzma_options_delta, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !57
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.27, i32 noundef %77) #9
  br label %79

78:                                               ; preds = %9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #9
  br label %79

79:                                               ; preds = %63, %69, %72, %51, %52, %73, %78
  %80 = add i64 %11, 1
  %81 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !43
  %83 = icmp eq i64 %82, -1
  br i1 %83, label %8, label %9, !llvm.loop !59
}

declare void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @message_filters_show(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !34 {
  %3 = alloca [512 x i8], align 16
  %4 = load i32, ptr @verbosity, align 4, !tbaa !35
  %5 = icmp ult i32 %4, %0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #9
  call void @message_filters_to_str(ptr noundef nonnull %3, ptr noundef %1, i1 noundef zeroext true)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !39
  %8 = load ptr, ptr @progname, align 8, !tbaa !39
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef %8, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #9
  br label %10

10:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_try_help() local_unnamed_addr #0 !prof !34 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @message_version() local_unnamed_addr #4 !prof !34 {
  %1 = load i8, ptr @opt_robot, align 1, !tbaa !62, !range !64, !noundef !65
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @lzma_version_number() #9
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 50000056, i32 noundef %4)
  br label %10

6:                                                ; preds = %0
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %8 = tail call ptr @lzma_version_string() #9
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %8)
  br label %10

10:                                               ; preds = %6, %3
  %11 = load i32, ptr @verbosity, align 4, !tbaa !35
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %13) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare i32 @lzma_version_number() local_unnamed_addr #5

declare ptr @lzma_version_string() local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @message_help(i1 noundef zeroext %0) local_unnamed_addr #4 !prof !34 {
  %2 = load ptr, ptr @progname, align 8, !tbaa !39
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef %2)
  br i1 %0, label %4, label %26

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.34)
  %6 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.35)
  %7 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36)
  %8 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.37)
  %9 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38)
  %10 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.39)
  %11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40)
  %12 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.41)
  %13 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42)
  %14 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43)
  %15 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.44)
  %16 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.45)
  %17 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.46)
  %18 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.47)
  %19 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.48)
  %20 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.49)
  %21 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.50)
  %22 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.51)
  %23 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.52)
  %24 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.53)
  %25 = tail call i32 @putchar(i32 10)
  br label %31

26:                                               ; preds = %1
  %27 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36)
  %28 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38)
  %29 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42)
  %30 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43)
  br label %31

31:                                               ; preds = %26, %4
  %32 = phi ptr [ @.str.55, %4 ], [ @.str.51, %26 ]
  %33 = phi ptr [ @.str.56, %4 ], [ @.str.57, %26 ]
  %34 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %32)
  %35 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %33)
  %36 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.58)
  %37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.59)
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull @.str.61)
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64)
  %40 = load i32, ptr @verbosity, align 4, !tbaa !35
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %42) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }

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
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!44, !42, i64 0}
!44 = !{!"", !42, i64 0, !40, i64 8}
!45 = !{!44, !40, i64 8}
!46 = !{!47, !36, i64 32}
!47 = !{!"", !36, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !40, i64 96, !40, i64 104}
!48 = !{!47, !36, i64 40}
!49 = !{!47, !36, i64 0}
!50 = !{!47, !36, i64 20}
!51 = !{!47, !36, i64 24}
!52 = !{!47, !36, i64 28}
!53 = !{!47, !36, i64 36}
!54 = !{!47, !36, i64 44}
!55 = !{!56, !36, i64 0}
!56 = !{!"", !36, i64 0}
!57 = !{!58, !36, i64 4}
!58 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !40, i64 32}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !63, i64 0}
!63 = !{!"_Bool", !37, i64 0}
!64 = !{i8 0, i8 2}
!65 = !{}
